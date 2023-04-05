import UIKit

class Sailor {
    let name: String
    
    func introduceMyself() {
        print("Hi my name is \(name)")
    }
    
    init(sailorName: String) {
        self.name = sailorName
    }
}

class Ship {
    let name: String
    let sailors: [Sailor]
    
    func introduceAll() {
        print("We are from ship that name's \(name)")
    }
    
    init(shipName: String, comand: [Sailor]) {
        self.name = shipName
        self.sailors = comand
    }
}

let firtsSailor = Sailor(sailorName: "Ruslan")
let secondSailor = Sailor(sailorName: "Andrew")
let thirdSailor = Sailor(sailorName: "John")
let fourthSailor = Sailor(sailorName: "Matrix")
let fifthSailor = Sailor(sailorName: "Arsen")

let myShip = Ship(shipName: "Titanic", comand: [firtsSailor, secondSailor, thirdSailor, fourthSailor, fifthSailor])

myShip.introduceAll()

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        print("Привіт, я з корабля \(name)")
    }
}

class TitanicSailor: Sailor {
    override func introduceMyself() {
        print("Hello, my name is \(name)")
    }
}


class Calculator {
    func add(a: Float, b: Float) -> Float {
        return a + b
    }
    
    func minus(a: Float, b: Float) -> Float {
        return a - b
    }
    
    func mult(a: Float, b: Float) -> Float {
        return a * b
    }
    
    func div(a: Float, b: Float) -> Float {
        return a / b
    }
}

class CalculatorPro: Calculator {
    
    func percent(amount: Float, percent: Float) -> Float {
        return (amount / 100) * percent
    }
    
    func myPow(num: Float, myPows: Int) -> Float {
        
        if myPows == 1 {
            return num
        } else {
            return num * myPow(num: num, myPows: myPows - 1)
        }
    }
}

class SuperProCalculator: CalculatorPro {
    func calculateCompoundInterest(principal: Double, rate: Double, time: Double) -> Double {
        let compoundInterest = principal * pow((1 + rate), time)
        return compoundInterest
    }
}

let myCalc = SuperProCalculator()

myCalc.calculateCompoundInterest(principal: 1000, rate: 0.1, time: 2)


func checkBattery(baterryLife: Int) {
    switch baterryLife {
    case 100: print("Device is already charchg")
    case 70...80: print("You will need charger in 6 hours")
    case 20...40: print("Please, put your phone to charger")
    case 0: print("Your phone die")
    default: break
    }
}

checkBattery(baterryLife: 78)
