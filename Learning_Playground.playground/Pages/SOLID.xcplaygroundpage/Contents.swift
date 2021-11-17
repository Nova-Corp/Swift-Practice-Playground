//: [Previous](@previous)

import Foundation

class Fetcher<T: Decodable> {
    
    func myName(is name: String) {
        print("Welcome, \(name)!")
    }
    
    func fetch(onComplete: @escaping ([T])-> Void) {
        let session = URLSession.shared
        let url = URL(string: "")!
        session.dataTask(with: url) { (data, _, error) in
            guard let data = data else {
                print(error!)
                onComplete([])
                return
            }
            
            let decoder = JSONDecoder()
            let decoded = try? decoder.decode([T].self, from: data)
            onComplete(decoded ?? [])
        }
    }
}

struct User: Codable {}

typealias UserFetcher = Fetcher<User>

let uf = UserFetcher()
uf.myName(is: "Shan")

//

class FileFetcher<T: Decodable>: Fetcher<T> {
    override func fetch(onComplete: @escaping ([T]) -> Void) {
        
    }
}
