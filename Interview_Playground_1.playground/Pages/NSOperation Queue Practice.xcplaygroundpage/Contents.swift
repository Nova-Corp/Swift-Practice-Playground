import Foundation

let blockOperation1 = BlockOperation {
    print("Executing Task 1!")
}
let blockOperation2 = BlockOperation {
    print("Executing  Task 2!")
}
let blockOperation3 = BlockOperation {
    print("Task 3 start")
    sleep(4)
    print("Executing  Task 3!")
}

final class ContentImportOperation: Operation {

    let itemProvider: NSItemProvider

    init(itemProvider: NSItemProvider) {
        self.itemProvider = itemProvider
        super.init()
    }

    override func main() {
        guard !isCancelled else { return }
        print("Custom Task 3 start")
        sleep(3)
        print("Importing content..")

        // .. import the content using the item provider

    }
}

let queue = OperationQueue()

let customOperation = ContentImportOperation(itemProvider: NSItemProvider(contentsOf: URL(string: ""))!)

blockOperation3.addDependency(customOperation)
queue.addOperations([blockOperation1, blockOperation2, blockOperation3], waitUntilFinished: false)

queue.addOperation(customOperation)

blockOperation3.cancel()

print("All are executed.")
queue.cancelAllOperations()
