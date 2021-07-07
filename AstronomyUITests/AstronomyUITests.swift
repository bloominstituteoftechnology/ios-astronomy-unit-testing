//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Bradley Yin on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
    
    var app: XCUIApplication = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    var photoCollectionView: XCUIElement {
        let collectionView = app.collectionViews["PhotosCollectionViewController.collectionView"]
        XCTAssertTrue(collectionView.exists)
        return collectionView
    }
    
    var savePhotoButton: XCUIElement {
        let button = app.buttons["PhotoDetailViewController.SaveButton"]
        XCTAssertTrue(button.exists)
        return button
    }
    
    var savedAlert: XCUIElement {
        let alert = app.alerts.element
        XCTAssert(alert.exists)
        return alert
    }
    
    

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSaveDetailVC() {
        let cell1 = photoCollectionView.children(matching: .cell).firstMatch
        sleep(30)
        
        cell1.tap()
        
        XCTAssert(app.navigationBars["Title"].exists)
        
        savePhotoButton.tap()
        
        XCTAssertTrue(savedAlert.isHittable)
    }

}
