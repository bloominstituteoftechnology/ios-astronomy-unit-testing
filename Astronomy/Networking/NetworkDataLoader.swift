
import Foundation

protocol NetworkDataLoader {
    
    // need back: Data & Error
    // provide: URLRequest
    
    func loadData(from request: URLRequest, completion: @escaping(Data?, Error?) -> Void)
    
    
    // need back: Data & Error
    // provide: URL
    
    func loadData(from url: URL, completion: @escaping(Data?, Error?) -> Void)
    
}

// Extension so that URL session behaves like a NetworkDataLoader
extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        let task = self.dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }
        task.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        let task = self.dataTask(with: url) { (data, _, error) in
            completion(data, error)
        }
        task.resume()
    }

}
