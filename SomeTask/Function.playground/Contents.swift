import UIKit

//Повернення імені та прізвища
func represent(name: String, surname: String) -> String{
    print("Hello, my name is \(name) \(surname)")
    return name + " " + surname
}

let me = represent(name: "Ruslan", surname: "Lyulka")

//Приймає число а повертає квадратний корінь
func mySqrt(num: Float) -> Float {
    return sqrtf(num)
}

let myNum1 = mySqrt(num: 25)

//Приймає число а повертає у 2 степені

func myPow(num: Float) -> Float {
    return num * num
}

let myNum2 = myPow(num: 10)

//
func myFunc(num1: Float, num2: Float) -> Float32 {
    return mySqrt(num: num1) + myPow(num: num2)
}

let result = myFunc(num1: 25, num2: 10)

//
var count = 0
for i in 1...10 {
    print("--------------------------------Start------------------------------------------")
    for j in 1...10 {
        let someValue = myFunc(num1: Float(i), num2: Float(j))
        count += 1
        print("\(count). sqrtNum \(mySqrt(num: Float(i))) powNum \(myPow(num: Float(j))) summ is \(someValue)")
    }
    print("----------------------------------End----------------------------------------")
}
