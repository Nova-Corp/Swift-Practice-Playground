import Foundation

DispatchQueue.global(qos: .background).sync {
    print("Sync Process 1 start")
    sleep(3)
    print("Sync Process 1 finished")
}

DispatchQueue.global().async {
    print("Async Process 2 start")
    sleep(3)
    print("Async Process 2 finished")
}

DispatchQueue.global().async {
    print("Async Process 1 start")
    sleep(4)
    print("Async Process 1 finished")
}


DispatchQueue.global().sync {
    print("Sync Process 2 start")
    sleep(4)
    print("Sync Process 2 finished")
}


//class Foo{
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//    deinit {
//        print("Deinitialized.")
//    }
//}
//
//weak var foo: Foo?
//
//foo = Foo.init(name: "Shan")
//print(foo?.name)

//DispatchQueue.global(qos: .background).sync {
//    foo(id: 1)
//    DispatchQueue.main.asyncAfter(deadline: .now()+5, execute: {
//        foo(id: 2)
//    })
//}
//
//func foo(id: Int){
//    print("Foo: \(id) Process Executed.")
//}
