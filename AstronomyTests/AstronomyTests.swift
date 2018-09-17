//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by William Bundy on 9/17/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockLoader:NetworkDataLoader
{
	var lastURL:URL?
	var lastRequest:URLRequest?

	var data:Data?
	var error:Error?

	init(data:Data?, error:Error?)
	{
		self.data = data
		self.error = error
	}


	func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
	{
		self.lastURL = url
		completion(data, error)
	}

	func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
	{
		self.lastRequest = request
		completion(data, error)
	}
}


class AstronomyTests: XCTestCase
{
	
}
