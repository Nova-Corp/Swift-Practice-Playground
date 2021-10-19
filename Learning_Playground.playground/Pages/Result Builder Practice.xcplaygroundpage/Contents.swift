import Foundation
import UIKit

@resultBuilder
struct StringBuilder {
    static func buildEither(first component: String) -> String {
        print("buildEither First---> \(component)")
        return component
    }

    static func buildEither(second component: String) -> String {
        print("buildEither Second---> \(component)")
        return component
    }
//    static func buildOptional(_ component: String?) -> String {
//        print("buildOptional---> \(component!)")
//        return component!
//    }
    
    static func buildBlock(_ components: String...) -> String {
        print("buildMain---> \(components)")
        return components.joined(separator: "⭐️")
    }
    
}

@StringBuilder func greet(name: String) -> String {
    "Hello"
    "World"
    
//    switch name {
//    case "a": "A is printed"
//    case "b": "B is printed"
//    default: "Others"
//    }
    if !name.isEmpty {
        "to"
        name
    }
    else {
        "World"
    }
}

print(greet(name: ""))


