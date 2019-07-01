//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Michael Flowers on 7/1/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

//Dir: Add test functions for the things you want to test. You should test at least fetchMarsRover() and fetchPhotos(). Create a struct that conforms to the NetworkDataLoader protocol
struct MockLoader: NetworkDataLoader {
    //Dir: Add properties for data and erro so that the struct can be initialized with explicitly known data and/ or an error.
    let data: Data?
    let error: Error?
    
    init(data: Data?, error: Error?){
        self.data = data
        self.error = error
    }
    
    
    //Dir: Implement the two load functions. They should call the passed completion closure with the values of the object's data and error properties. Make them call the completion closure asynchronously on the global background queue.
    //remember dispatchQueue.async pushes it to the back ground queue
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            completion(self.data, self.error)
        }
    }
    
    func loadData(from URL: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            completion(self.data, self.error)
        }
    }
}
