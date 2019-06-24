//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Hector Steven on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

@testable import Astronomy

struct MockLoader: NetworkDataLoader {
	func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
		
	}
	
	func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
		
	}
	
	
}
