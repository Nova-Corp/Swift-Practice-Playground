import Foundation

var fruits:Set<Int> = [1, 2, 3, 3, 4, 5, 6, 6]

let fruitsArr = Array(fruits).sorted(by: <)

print(fruitsArr)
