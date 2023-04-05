import UIKit

class Calculator {
    
    func add(a: Double, b: Double) -> Double {
        return a + b
    }
    
    func minus(a: Double, b: Double) -> Double {
        return a - b
    }
    
    func mult(a: Double, b: Double) -> Double {
        return a * b
    }
    
    func div(a: Double, b: Double) -> Double {
        return a / b
    }
    
    func divLeft(a: Double, b: Double) -> Double {
        return a.truncatingRemainder(dividingBy: b)
    }
}

class SuperCalculator: Calculator {
    
    func myPow(num: Double, pows: Int) -> Double {
        
        if pows == 1 {
            return num
        } else {
            return num * myPow(num: num, pows: pows - 1)
        }
    }
    
    func percent(amount: Double, percent: Double) -> Double {
        let onePercent = amount / 100
        return onePercent * percent
    }
    
    override func add(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        return super.add(a: a, b: b)
        
    }
    
    override func minus(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        return super.minus(a: a, b: b)
        
    }
    
    override func mult(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        return super.mult(a: a, b: b)
    }
    
    override func div(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        return super.div(a: a, b: b)
    }
    
    override func divLeft(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        return super.divLeft(a: a, b: b)
    }
}

let myCalc = SuperCalculator()

myCalc.divLeft(a: 12.2, b: 4)
myCalc.percent(amount: 100, percent: 5.6)
myCalc.myPow(num: 10, pows: 3)
myCalc.mult(a: 100, b: 123)
