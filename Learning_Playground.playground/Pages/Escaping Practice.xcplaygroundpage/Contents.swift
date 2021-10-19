import Foundation

func addTwoNum(firstNum: Int, secondNum: Int, onSuccess closure: @escaping(String)->Void){
    let num = firstNum+secondNum
    print("start")

    DispatchQueue.main.async {
      closure("Success! Result is \(num)")
    }


    print("end")
}
addTwoNum(firstNum: 10, secondNum: 20, onSuccess: { message in
    print(message)
})
