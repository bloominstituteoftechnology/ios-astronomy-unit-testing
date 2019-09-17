//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Jeffrey Santana on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
	var data: Data?
	var error: NetworkError?
	
	func loadData(from request: URL, completion: @escaping (Data?, Error?) -> Void) {
		DispatchQueue.global().async {
			completion(self.data, self.error)
		}
	}
	
	func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {		
		DispatchQueue.global().async {
			completion(self.data, self.error)
		}
	}
}
