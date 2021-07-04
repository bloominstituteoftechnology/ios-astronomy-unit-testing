//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Michael Flowers on 7/1/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    var myMarsRover: MarsRover?
    
    //In your tests create a MockLoader instance with appropriate data or an error, and pass it into the intializer for MarsRoverClient. - If you need to test JSON, you can find it in the TestJSON.swift
    func testFetchMarsRoverValidJson(){
        
        //Step 0. Load/create mock data
        let mockDataLoader = MockLoader(data: validRoverJSON, error: nil)
        
        //step 1. initialize the dataLoader from the class where we want to make the network call from
        let marsRoverClient = MarsRoverClient(networkDataLoader: mockDataLoader)
        
        //step: 2. because we are testing an asynchronous call, we have to use expectations
        let expectaion = self.expectation(description: "We did not get a MarsRover model back")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (data, error) in
            //Create a property in MarsRoverClient to hold the MarsRover that was sent back from the network call.
            //Grab that property and test to see if one of its attributes matches what it's supposed to match based on the mock json.
            XCTAssert(marsRoverClient.marsRoverTesting?.name == "Curiosity")
            
            guard let rover = data else { print("Error on this line: \(#line)"); return }
            self.myMarsRover = rover
            expectaion.fulfill()
        }
        
        //because the network call is asynchronous, it's going to hop out of the function and run in the background, However, as a consequence of hopping out of the function, it will run/execute the things after the "}".
        
        //Knowing this, we don't want to move on until that closure is executed, so what we do is call waitForException, which will throw it back into the completion handler and wait until the exception is fulfilled. Once it is fulfilled then it will jump back out of the closure and contine to execute the rest of the file.
        waitForExpectations(timeout: 3)
        
    }

    
    func testMarsRoverAndFetchPhotosFunction(){
        var myRover: MarsRover?
        let mockDataLoader = MockLoader(data: validRoverJSON, error: nil)
        
        //step 1. initialize the dataLoader from the class where we want to make the network call from
        let marsRoverClient = MarsRoverClient(networkDataLoader: mockDataLoader)
        
        //step: 2. because we are testing an asynchronous call, we have to use expectations
        let expectaion = self.expectation(description: "We did not get a MarsRover model back")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (data, error) in
            //Create a property in MarsRoverClient to hold the MarsRover that was sent back from the network call.
            //Grab that property and test to see if one of its attributes matches what it's supposed to match based on the mock json.
            XCTAssert(marsRoverClient.marsRoverTesting?.name == "Curiosity")
            
            guard let rover = data else { print("Error on this line: \(#line)"); return }
            myRover = rover
            let photoMockDataLoader = MockLoader(data: validSol1JSON, error: nil)
            
            let marsRoverClientForPhoto = MarsRoverClient(networkDataLoader: photoMockDataLoader)
           
            marsRoverClientForPhoto.fetchPhotos(from: data!, onSol: 1, completion: { (datas, error) in
                guard let count = datas?.count else {print("This error is right here: \(#line)"); return }
                XCTAssert(count > 0)
            })
            expectaion.fulfill()
        }
        waitForExpectations(timeout: 3)
    }
}
