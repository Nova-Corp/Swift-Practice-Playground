import Foundation

struct Person: CustomStringConvertible {
     let name: String
     
     var description: String {
         print("Asking for Person description.")
         return "Person name is \(name)"
     }
 }

 let isDebuggingEnabled: Bool = true
 
 func debugLog(_ message: @autoclosure () -> String) {
     if isDebuggingEnabled {
         print("[DEBUG] \(message())")
     }
 }

 let person = Person(name: "Bernie")
 debugLog(printSomething())

func printSomething() -> String{
    
    print("New value")
    return "Str"
}



//func debugLogNew(device: String, _ message: (String) -> Void) {
//    print(device)
//    message("Hello")
//}
//
//debugLogNew(device: "iOS", { msg in
//
//})


