//: [Previous](@previous)

import Foundation

let dic = [
    "movie" : ["Billa", "Kuruvi"],
    "likes" : ["Billa", "Sura"],
    "commands" : "<null>"
] as [String : Any]

let filteredValue = dic.filter {value in
    if let newValue = value.value as? String {
        if newValue == "<null>"{
            return false
        }
    }
    return true
}.compactMap{$0.value}
//let filteredValue1 = dic.compactMapValues {$0}

print(filteredValue)
//print(filteredValue1)

















struct Customer {
    let name: String?
    let age: Int
    let address: [Address]?
}

struct Address {
    let location: String
    let state: String?
}

let customers = [
    Customer(name: "Shanmugam",
             age: 24,
             address: [
                 Address(location: "IN", state: "TN"),
                 Address(location: "UK", state: nil),
                 Address(location: "US", state: "TK"),
    ]),
    Customer(name: "Kiruba",
             age: 26,
             address: nil),
    Customer(name: "Ragavan",
             age: 26,
             address: [
                 Address(location: "IN", state: "TN"),
                 Address(location: "UK", state: "LO"),
                 Address(location: "US", state: nil),
    ]),

    Customer(name: nil,
             age: 26,
             address: nil),
]

let customerName = customers.compactMap { $0.name }.filter { $0 != "" }
print(customerName)

let customerAddress = customers.compactMap { $0.address?.compactMap { $0.state } }.flatMap { $0 }
print(customerAddress)
