import UIKit

func persInfo(_ name: String = "None", job: String = "None", vacationDay: Int = 0) {
    print("My name is \(name), i am \(job), I have \(vacationDay) days for my vacation")
}

//let ruslan = persInfo(name: "Ruslan")
//let andrew = persInfo(name: "Andrew", vacationDay: 365)
//let anna = persInfo(name: "Anna", job: "HR", vacationDay: 13)

let ruslan = persInfo("Ruslan")
let andrew = persInfo("Andrew", vacationDay: 365)
let anna = persInfo("Anna", job: "HR", vacationDay: 13)

func sum(line1: String, line2: String) -> String {
    return line1 + " " + line2
}

func sum(numF1: Float, numF2: Float) -> Float {
    return numF1 + numF2
}

func sum(numI1: Int, numI2: Int) -> Int {
    return numI1 + numI2
}

let firtsF: Float = 14.1
let secondF: Float = 57.4

let firstI = 10
let secondI = 73

let firstS = "Hello"
let secondS = "my friend"

sum(numF1: firtsF, numF2: secondF)
sum(numI1: firstI, numI2: secondI)
sum(line1: firstS, line2: secondS)


//
func persName(name: String, clouser: (String) -> ()) {
    clouser(name)
}

persName(name: "Ruslan") { userName in
    if userName.isEmpty || userName == " " {
        print("Bob")
    } else {
        print(userName)
    }
}

//Рекурсія

//Факторіал

func factorial(n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n * factorial(n: n - 1)
    }
}

factorial(n: 5)

//число від 1 до n

func printNum(num: Int) -> Int {
    
    if num == 1 {
        print(1)
        return 1
    } else {
        print(num)
        return printNum(num: num - 1)
    }
}

printNum(num: 10)

