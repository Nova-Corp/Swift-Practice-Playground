import Foundation

func goodMorning(morning: Bool, whom: @autoclosure() -> Void) {
    if morning {
        print("Good morning")
        whom()
    }
}

var giveAname = { () -> String in
    print("giveAname is called")
    return "Robert"
}

goodMorning(morning: true, whom: nan())

func nan(){
    print("ytytuy")
}


func printTest1(_ result: @autoclosure() -> Void) {
    print("Before")
    result()
    print("After")
}

printTest1(print("Hello"))
