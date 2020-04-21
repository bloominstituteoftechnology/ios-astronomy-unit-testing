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
    
    func testFetchPhoto() {
        let mockDataTask = MockNetworkSessionDataTask(data: testImageData, response: nil, error: nil, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        let fetchPhotoOperation = FetchPhotoOperation(photoReference: mockPhotoReference, session: mockSession)
        
        let photoQueue = OperationQueue()
        photoQueue.addOperations([fetchPhotoOperation], waitUntilFinished: true)
    
        XCTAssertEqual(fetchPhotoOperation.image!.size, CGSize(width: 1024, height: 1024))
    }
    
    func testFetchPhotoInvalidData() {
        
    }
    
    func testFetchPhotoNoData() {
        
    }
    
    func testFetchPhotoTransportError() {
        
    }
    
    func testFetchPhotoCancelBeforeDone() {
        
    }
}
