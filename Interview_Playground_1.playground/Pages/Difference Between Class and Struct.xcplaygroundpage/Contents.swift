//: [Previous](@previous)

import Foundation

class MyClass {
    var num: Int = 1
}
let cInst1 = MyClass()
let cInst2 = cInst1
cInst2.num = 200
print(cInst1.num)

struct MyStruct {
    var num: Int = 1
}
var sInst1 = MyStruct()
var sInst2 = sInst1
sInst2.num = 200
print(sInst1.num)
