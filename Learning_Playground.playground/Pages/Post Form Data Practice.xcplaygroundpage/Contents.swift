import Foundation

struct ProductList: Codable {
    let productId: Int
    let quantity: Int
    let offer: Int
    let originalPrice: Int
    
    enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case quantity = "quantity"
        case offer = "offer"
        case originalPrice = "original_price"
    }
}

let localBaseUrl = "http://localhost.srcap.com/"
let demoBaseUrl = "http://localhost.srcap.com/"

let demoBearerToken = "Bearer xxxxx"


let localBearerToken = "Bearer xxxxx"

let url = URL(string: demoBaseUrl)!

var request = URLRequest(url: url)

let boundary = "Boundary-\(NSUUID().uuidString)"

request.addValue(demoBearerToken, forHTTPHeaderField: "Authorization")

request.addValue("application/json", forHTTPHeaderField: "Accept")

request.addValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")

request.httpMethod = "POST"

var productList: [ProductList] = [
    ProductList(productId: 1, quantity: 2, offer: 20, originalPrice: 250)
]

let encoder = JSONEncoder()

let productListData = try! encoder.encode(productList)

let encodedProductList = String(data: productListData, encoding: .utf8)!

let parameters: [String: String] = [
    "user_id" : "\(1)",
    "product_list" : encodedProductList,
    "total_price" : "\(12)",
    "address_id" : "\(1)",
    "charge_id" : "fefedfs"
]

let body = createBody(param: parameters)

request.httpBody = body


let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
    guard let data = data else {
        print(error?.localizedDescription as Any)
        return
    }
    
    print(String(data: data, encoding: .utf8))
}

task.resume()


func createBody(param: [String: String]?) -> Data {
    let lineBreak = "\r\n"
    var body = Data()
    
    if let parameters = param {
        for (key, value) in parameters {
            body.append("--\(boundary + lineBreak)")
            body.append("Content-Disposition: form-data; name=\"\(key)\"\(lineBreak + lineBreak)")
            body.append("\(value + lineBreak)")
        }
    }
    body.append("--\(boundary)--\(lineBreak)")
    return body
}

extension Data {
    mutating func append(_ string: String) {
        if let data = string.data(using: .utf8) {
            append(data)
        }
    }
}
