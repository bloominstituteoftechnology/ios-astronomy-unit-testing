//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Joseph Rogers on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy
/*

Does decoding work? ✅
Does decoding fail when given bad data?✅
Does it build the correct URL?
Does it build the correct URLRequest?
are the search results saved properly?✅
Is the completion handler called when data is good?✅
Is the completion handler called when data is bad?✅
Is the completion handler called when the network fails?


create expectation
create controller
schedule work
then wait

*/

class AstronomyTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
