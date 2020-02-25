////
////  MockDataLoader.swift
////  AstronomyTests
////
////  Created by Jorge Alvarez on 2/24/20.
////  Copyright © 2020 Lambda School. All rights reserved.
////
//
//import Foundation
//@testable import Astronomy
//
//// Create a MockLoader struct that conforms to the NetworkDataLoader protocol.
//class MockDataLoader: NetworkDataLoader {
//
//    // Add properties for data and error so that the struct can be initialized with explicitly known data and/or an error.
//    var data: Data?
//    var error: Error?
//
//    // They should call the passed completion closure with the values of object's data and error properties. Make them call the completion closure asynchronously on the global background queue.
//
//    /// Uses URLRequest
//    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
//        // Mimics 1 second network call
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            completion(self.data, self.error)
//        }
//    }
//
//    /// Uses URL
//    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
//        // Mimics 1 second network call
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            completion(self.data, self.error)
//        }
//    }
//}
