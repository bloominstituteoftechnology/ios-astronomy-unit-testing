//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Jorge Alvarez on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/*
 Before you begin writing tests, you should determine what functionality you'd like to test, and how. Remember that unit testing should focus on small, independent parts of your app. Make a list of tests you'd like to write. You can do this in note form, or by creating skeleton test case classes with empty (but well-named) test methods.

 Be sure that you test the networking parts of the app, paying particular attention to testing MarsRoverClient.
 
 Refactor MarsRoverClient to Improve Testability

 MarsRoverClient is where all the networking code in the project lives. Before you can write effective tests for it, you'll need to refactor it support dependency injection via a protocol-conforming object.

     Create a new Swift file called NetworkDataLoader.swift.
     Inside NetworkDataLoader.swift, define a protocol called NetworkDataLoader.
     It should include two methods, func loadData(from request: URLRequest, completion: @escaping( Data?, Error?) -> Void), and func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void).
     Add an extension to URLSession to add conformance to NetworkDataLoader. Implement both loadData() variants.
     In MarsRoverClient, add a constant property called networkLoader of type NetworkDataLoader.
     Add an initializer to MarsRoverClient that takes a NetworkDataLoader object. Give the initializer's argument a default value of URLSession.shared. This way, MarsRoverClient will continue to function as always in existing code, but test code can provide (inject) a different network loader.
     Update all MarsRoverClient methods to use the networkLoader property instead of obtaining URLSession.shared directly. If you're using the starter code, only one method, fetch<T>() needs to be changed.
     Build and run the app and verify that it still works as it did before.
 */

class AstronomyTests: XCTestCase {

}
