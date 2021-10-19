//: [Previous](@previous)

import Foundation










var description: [String] = ["This", "Thi","This is first", "ThisNewss desc This is", "Olddd is gold"]
let keyWord = "This"

description = description.filter{
    if !(String($0.prefix(keyWord.count)) == keyWord) {
        return true
    }
    return false
}

print(description)













let firstString = "asdfgh"
let secondString = "12345678"
let thirdString = "qwer"


let inputArray = [Array(firstString), Array(secondString), Array(thirdString)]


print(concatAlternateString(for: inputArray))

func concatAlternateString(for array: [Array<Character>]) -> [String] {
    var concatArray = [String]()

    let maximumArrayCount = array.map { $0.count }.max() ?? 0

    for elementIndex in 0 ... maximumArrayCount - 1 {
        for inputArrayElement in inputArray {
            if elementIndex >= inputArrayElement.count {
                continue
            }

            concatArray.append("\(inputArrayElement[elementIndex])")
        }
    }

    return concatArray
}
