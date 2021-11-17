//: [Previous](@previous)

import Foundation

/* // 1.
struct Sum {
    var x: Int
    func callAsFunction(_ y: Int) -> Int { x + y }
}

// 2.
let addTwo = Sum(x: 2)
print(addTwo(3)) // 5
*/




class WannabeFunction {
    let name: String
    init(name: String) {
        self.name = name
    }
    func callAsFunction() { print(#function) }

    // Argument label overloading
    func callAsFunction(x: Int, y: String) { print(#function, x, y) }
    func callAsFunction(y: Int) { print(#function, y) }

    // Argument type overloading
    func callAsFunction(x: String) { print(#function, x) }

    // Generic type constraint overloading
    func callAsFunction<T>(value: T) where T: Numeric { print(#function, value) }
    func callAsFunction<T>(value: T) where T: StringProtocol { print(#function, value) }
}

let w = WannabeFunction(name: "Shan1")
w(x: 1, y: w.name)
w.callAsFunction(x: 1, y: "Shan")



/*
@dynamicCallable
class Greeter {
    // MARK:- Name
    func dynamicallyCall(withKeywordArguments args: KeyValuePairs<String, String>) {
        for (_, value) in args {
            print("Hi, \(value).")
        }
    }
    // MARK:- Age
    func dynamicallyCall(withKeywordArguments args: KeyValuePairs<String, Int>) {
        for (_, value) in args {
            print("Age is \(value).")
        }
    }
    // MARK:- Without parameter name
    func dynamicallyCall(withArguments args: [String]) {
        for value in args {
            print("Country is \(value).")
        }
    }
}

let greeter = Greeter()
greeter(name1: "Charles", name2: "Darwin")
greeter(age1: 100, age2: 50)
greeter("India", "America")
*/
