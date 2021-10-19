//: [Previous](@previous)

import Foundation

protocol NormalProtocol {
    associatedtype MonthType
    var month: MonthType { get set }
}

class NormalClass: NormalProtocol {
    var month = 1
}

//struct NormalStruct: NormalProtocol {
//    typealias MonthType = String
//    var month: MonthType = "Jan"
//}

let normalClass = NormalClass()
print(normalClass.month)

//let normalStruct = NormalStruct()
//print(normalStruct.month)

