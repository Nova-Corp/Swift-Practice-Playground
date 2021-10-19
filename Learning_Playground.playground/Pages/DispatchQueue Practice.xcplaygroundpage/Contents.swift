//: [Previous](@previous)

import Foundation

let q = DispatchQueue(label: "sss")

q.async {
    DispatchQueue.global().async {
        sleep(2)
        print(1)
    }
    DispatchQueue.global().sync {
        sleep(5)
        print(2)
    }
}

q.sync {
    print(3)
}

// Object LifeCycle

