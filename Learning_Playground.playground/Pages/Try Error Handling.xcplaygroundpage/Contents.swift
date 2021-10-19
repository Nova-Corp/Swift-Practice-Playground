//: [Previous](@previous)

import Foundation

enum UserNameError : Error {
    case userIdNotExist
}
func getNameOfUser(userId uid: Int) throws -> String? {
    if uid == 0 {
        return "Alex"
    } else if uid == 1 {
        return "Jack"
    } else if uid == 2 {
        return nil
    }
    throw UserNameError.userIdNotExist
}

func callerMethod() {
    let name = try! getNameOfUser(userId: 1)
    print(name)
    
}

callerMethod()

