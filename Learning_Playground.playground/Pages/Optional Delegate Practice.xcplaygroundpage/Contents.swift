import Foundation

protocol SampleClassDelegate {
    func taskOne()  // required
    func taskTwo()  // Optional
}

extension SampleClassDelegate {
    func taskTwo() {

    }
}

class SampleClass: SampleClassDelegate {

    var sampleClassDelegate: SampleClassDelegate?

    init() {
        print("SampleClass")
        sampleClassDelegate?.taskOne()
    }

    func taskOne() {
        print("Task 1")
    }
    func taskTwo() {

    }

}

SampleClass.init()
