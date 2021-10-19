import Foundation

let toDoUrl = URL(string: "https://jsonplaceholder.typicode.com/todos/1")
let postUrl = URL(string: "https://jsonplaceholder.typicode.com/posts")
var urlRequest = URLRequest(url: toDoUrl!)
urlRequest.httpMethod = "GET"
let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in

    guard let data = data else { print(String(describing: error)); return }
//    print(String(data: data, encoding: .utf8))
    let decoder = JSONDecoder()
    do {
        let toDo = try decoder.decode(ToDo.self, from: data)

        guard
            let userId = toDo.userId,
            let id = toDo.id,
            let title = toDo.title,
            let completed = toDo.completed
            else { print("Some Thing Went Worng!!!"); return }
        print(title)
    } catch let err {
        print(err)
    }
}

task.resume()

struct ToDo: Codable {
    let userId, id: Int?
    let title: String?
    let completed: Bool?

    enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case id, title, completed
    }
}
