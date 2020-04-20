//
//  MockNetworkSession.swift
//  AstronomyTests
//
//  Created by Shawn Gee on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockNetworkSession: NetworkSession {
    static let transportError = NSError(domain: "Transport Error", code: 0)
    
    var dataTask: MockNetworkSessionDataTask!
    
    init(dataTask: MockNetworkSessionDataTask) {
        self.dataTask = dataTask
    }
    
    func networkDataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask {
        dataTask.completionHandler = completionHandler
        return dataTask
    }
    
    func networkDataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask {
        dataTask.completionHandler = completionHandler
        return dataTask
    }
}

class MockNetworkSessionDataTask: NetworkSessionDataTask {
    let data: Data?
    let response: URLResponse?
    let error: Error?
    
    let delay: TimeInterval
    
    var completionHandler: ((Data?, URLResponse?, Error?) -> Void)?
    
    init(data: Data?, response: URLResponse?, error: Error?, delay: TimeInterval) {
        self.data = data
        self.response = response
        self.error = error
        
        self.delay = delay
    }
    
    func resume() {
        timer = Timer.scheduledTimer(withTimeInterval: delay, repeats: false, block: { _ in
            DispatchQueue.global().async {
                self.completionHandler?(self.data, self.response, self.error)
            }
        })
    }
    
    func cancel() {
        timer?.invalidate()
    }
    
    private var timer: Timer?
}
