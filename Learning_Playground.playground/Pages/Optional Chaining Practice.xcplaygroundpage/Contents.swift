import Foundation

class Student {

var teach: Teacher?
    init() {
        self.teach = Teacher()
    }

}

class Teacher {

    var name = "Suresh Dasari"

}

var stu = Student()

let stuname =  stu.teach?.name

print(stuname)
if let stuname =  stu.teach?.name {

print("Name: \(stuname)")

} else{

print("Unable to Retrieve Name")

}


//func albumReleased(year: Int) -> String? {
//    switch year {
//    case 2006: return "Taylor Swift"
//    case 2008: return "Fearless"
//    case 2010: return "Speak Now"
//    case 2012: return "Red"
//    case 2014: return "1989"
//    default: return nil
//    }
//}
//
//let album = albumReleased(year: 20061)
//print("The album is \(album?.uppercased())")
