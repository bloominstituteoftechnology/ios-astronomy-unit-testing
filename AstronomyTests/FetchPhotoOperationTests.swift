//
//  FetchPhotoOperationTests.swift
//  AstronomyTests
//
//  Created by Bradley Yin on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import XCTest
@testable import Astronomy

class FetchPhotoOperationTests: XCTestCase {
    
    func testStartOperation() {
        var photos : [MarsPhotoReference] = []
        let data = validSol1JSON!
        let jsonDecoder = MarsPhotoReference.jsonDecoder
        let decodedObject = try! jsonDecoder.decode([String : [MarsPhotoReference]].self, from: data)
        photos = decodedObject["photos"]!
        
        let fetchPhotoOperation = FetchPhotoOperation(photoReference: photos[0])
        fetchPhotoOperation.start()
        
        sleep(5)
        XCTAssertTrue(fetchPhotoOperation.image != nil)
    }
    
    func testCancelOperation() {
        var photos : [MarsPhotoReference] = []
        let data = validSol1JSON!
        let jsonDecoder = MarsPhotoReference.jsonDecoder
        let decodedObject = try! jsonDecoder.decode([String : [MarsPhotoReference]].self, from: data)
        photos = decodedObject["photos"]!
        
        let fetchPhotoOperation = FetchPhotoOperation(photoReference: photos[0])
        fetchPhotoOperation.start()
        fetchPhotoOperation.cancel()
        sleep(5)
        XCTAssertNil(fetchPhotoOperation.image)
    }
}
