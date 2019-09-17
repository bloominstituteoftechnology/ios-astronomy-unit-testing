//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Jeffrey Santana on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyUITests: XCTestCase {
	
	var app: XCUIApplication!

    override func setUp() {
		super.setUp()
		
		continueAfterFailure = false
		app = XCUIApplication()
		
		app.launchArguments = ["UITesting"]
		app.launch()
    }
	
	func testFirstSolLoadsImages() {
		let cell = app.collectionViews.element.cells.firstMatch
		XCTAssertTrue(cell.waitForExistence(timeout: 60))
	}

}
