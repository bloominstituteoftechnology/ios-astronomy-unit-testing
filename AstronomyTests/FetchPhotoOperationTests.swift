//
//  FetchPhotoOperationTests.swift
//  AstronomyTests
//
//  Created by Shawn Gee on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class FetchPhotoOperationTests: XCTestCase {
    
    // MARK: - Properties
    
    var testImageData: Data {
        let bundle = Bundle(for: Self.self)
        let path = bundle.path(forResource: "MarsTestPhoto", ofType: "jpg")!
        return try! Data(contentsOf: URL(fileURLWithPath: path))
    }
    
    var mockPhotoReference: MarsPhotoReference {
        let jsonDecoder = MarsPhotoReference.jsonDecoder
        let photosDict = try! jsonDecoder.decode([String : [MarsPhotoReference]].self, from: MockJSON.validPhotoData)
        let photos = photosDict["photos"]!
        return photos[0]
    }
    
    let photoQueue = OperationQueue()
    
    // MARK: - Tests
    
    func testFetchPhoto() {
        let mockDataTask = MockNetworkSessionDataTask(data: testImageData, response: nil, error: nil, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        let fetchPhotoOperation = FetchPhotoOperation(photoReference: mockPhotoReference, session: mockSession)

        photoQueue.addOperations([fetchPhotoOperation], waitUntilFinished: true)
        
        XCTAssertEqual(fetchPhotoOperation.image!.size, CGSize(width: 1024, height: 1024))
    }
    
    func testFetchPhotoInvalidData() {
        let invalidImageData = testImageData.dropFirst(1)
        
        let mockDataTask = MockNetworkSessionDataTask(data: invalidImageData, response: nil, error: nil, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        let fetchPhotoOperation = FetchPhotoOperation(photoReference: mockPhotoReference, session: mockSession)
        
        photoQueue.addOperations([fetchPhotoOperation], waitUntilFinished: true)
        
        XCTAssertNil(fetchPhotoOperation.image)
    }
    
    func testFetchPhotoNoData() {
        let mockDataTask = MockNetworkSessionDataTask(data: nil, response: nil, error: nil, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        let fetchPhotoOperation = FetchPhotoOperation(photoReference: mockPhotoReference, session: mockSession)
        
        photoQueue.addOperations([fetchPhotoOperation], waitUntilFinished: true)
        
        XCTAssertNil(fetchPhotoOperation.image)
    }
    
    func testFetchPhotoTransportError() {
        let mockDataTask = MockNetworkSessionDataTask(data: nil, response: nil, error: MockNetworkSession.transportError, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        let fetchPhotoOperation = FetchPhotoOperation(photoReference: mockPhotoReference, session: mockSession)
        
        photoQueue.addOperations([fetchPhotoOperation], waitUntilFinished: true)
        
        XCTAssertNil(fetchPhotoOperation.image)
    }
    
    func testFetchPhotoCancelBeforeDone() {
        let exp = self.expectation(description: "Wait for operation")
        
        let mockDataTask = MockNetworkSessionDataTask(data: testImageData, response: nil, error: nil, delay: 1.0)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        let fetchPhotoOperation = FetchPhotoOperation(photoReference: mockPhotoReference, session: mockSession)
        
        let testOperation = BlockOperation {
            exp.fulfill()
            XCTAssertNil(fetchPhotoOperation.image)
        }
        
        testOperation.addDependency(fetchPhotoOperation)
        photoQueue.addOperations([fetchPhotoOperation, testOperation], waitUntilFinished: false)
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
            fetchPhotoOperation.cancel()
        }

        wait(for: [exp], timeout: 5)
    }
}
