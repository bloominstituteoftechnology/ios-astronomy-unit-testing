
import XCTest
@testable import Astronomy

// Mock data loader
class MockDataLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}


/*
 Things to test
 - Does decoding work when given good data
 - Does decoding fail when given bad data
 - Does it build the correct URLRequest (with the API key)
 - Are results correctly saved into the property?
 - Is the completion handler called if the networking fails?
 - Is the completion handler called if the data is bad?
 - Is the completion handler called if the data is good?
 */

class MarsRoverClientTests: XCTestCase {

    var result: MarsRover?
    var error: Error?
    var photoFetchResults: [MarsPhotoReference] = []
    
    // fetchMarsRover()
    
    func testMarsRoverFetchOfGoodData() {
        let mockLoader = MockDataLoader()
        mockLoader.data = validRoverJSON
        
        // Change the MarsRoverClient so that it is using the mock data loader
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        let e = expectation(description: "Wait for results")
        
        // Fetch the MarsRover using the example data
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (data, error) in

            // Unwrap and set the returned data to the result property
            guard let data = data else { fatalError("No data has been returned") }
            self.result = data
            
            e.fulfill()
        }
        
        // Wait for the expectation and give it 2 seconds
        wait(for: [e], timeout: 2)
    
        // After finished waiting, check results
        guard let result = result else { fatalError("No result has been returned") }
        XCTAssertEqual(result.name, "Curiosity")
        XCTAssertEqual(result.numberOfPhotos, 4156)
        
    }
    
    func testMarsRoverFetchDecodingFailsForBadData() {
        let mockLoader = MockDataLoader()
        mockLoader.data = invalidRoverJSON
        
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        let e = expectation(description: "Wait for results")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (data, error) in

            self.result = data
            e.fulfill()
        }
        wait(for: [e], timeout: 2)
        
        XCTAssertTrue(result == nil)
    }
    
    func testMarsRoverFetchCorrectlyConstructedURLRequest() {
        
    }
    
    func testMarsRoverFetchResultsSavedIntoProperty() {
        
    }
    
    func testMarsRoverFetchCompletionForFailedNetworking() {
        
    }
    
    func testMarsRoverFetchCompletionForBadData() {
        
    }
    
    func testMarsRoverFetchCompletionForGoodData() {
        
    }
    
    // fetchPhotos()
    
    func testPhotosFetchOfGoodData() {
        
        let mockLoader = MockDataLoader()
        mockLoader.data = validSol1JSON
        
        // Load the MarsRover before loading the photos from that MarsRover
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        let e = expectation(description: "Wait for results")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (data, error) in

            guard let data = data else { fatalError("No data has been returned") }
            self.result = data
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
        
        let mrc = MarsRoverClient(networkLoader: mockLoader)
        
        let ePhotos = expectation(description: "Wait for results")
        
        guard let result = result else { fatalError("No result") }
        
        mrc.fetchPhotos(from: result, onSol: 1) { (data, error) in
            self.photoFetchResults = data!
            ePhotos.fulfill()
        }
        wait(for: [e], timeout: 2)
        
        XCTAssertEqual(photoFetchResults[0].camera.fullName, "NAVCAM")
        XCTAssertEqual(photoFetchResults[0].sol, 1)
        XCTAssertEqual(photoFetchResults[0].camera.roverId, 5)
        XCTAssertTrue(photoFetchResults.count > 0)
        
    }
    
    func testPhotosFetchDecodingFailsForBadData() {
        let mockLoader = MockDataLoader()
        mockLoader.data = invalidSol1JSON
        
        // Load the MarsRover before loading the photos from that MarsRover
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        let e = expectation(description: "Wait for results")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (data, error) in
            
            self.result = data
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
        
        let mrc = MarsRoverClient(networkLoader: mockLoader)
        
        let ePhotos = expectation(description: "Wait for results")
        
        guard let result = result else { return }
        
        mrc.fetchPhotos(from: result, onSol: 1) { (data, error) in
            self.photoFetchResults = data!
            ePhotos.fulfill()
        }
        wait(for: [e], timeout: 2)
        
        XCTAssertTrue(photoFetchResults.count == 0)
    }
    
    func testPhotosFetchCorrectlyConstructedURLRequest() {
        
    }
    
    func testPhotosFetchResultsSavedIntoProperty() {
        
    }
    
    func testPhotosFetchCompletionForFailedNetworking() {
        
    }
    
    func testPhotosFetchCompletionForBadData() {
        
    }
    
    func testPhotosFetchCompletionForGoodData() {
        
    }


}
