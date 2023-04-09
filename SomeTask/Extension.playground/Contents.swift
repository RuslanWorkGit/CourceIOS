import UIKit

extension Int {
    func square() -> Int {
        self * self
    }
}

extension String {
    
    func firstWord() -> String {
        var world: String = ""
        
        for i in self {
            if i == " " || i == "," || i == "."{
                break
            } else {
                world += "\(i)"
            }
        }
        
        return world
    }
    
    func beforeComma() -> String {
        var world: String = ""
        
        for i in self {
            if i == ","{
                break
            } else {
                world += "\(i)"
            }
        }
        
        return world
    }
    
    func firstSentences() -> String{
        let senteces = self.components(separatedBy: ".")
        
        return senteces[0]
    }
    
    func containtExclamation() -> String {
        let sentences = self.components(separatedBy: ".")
        
        for sentence in sentences {
            if let range = sentence.range(of: "!") {
                        return sentence.prefix(through: range.upperBound).trimmingCharacters(in: .whitespacesAndNewlines)
                    }        }
        
        return "No sentences with !"
    }
    
    
}


let myText = "Hello I am Ruslan, my Dear friend. Today is good weather in capital of Ukraine! And I go for a walk. "
myText.firstWord()
myText.beforeComma()
myText.firstSentences()
myText.containtExclamation()

let znak = myText.range(of: "!")

myText[myText.startIndex..<znak!.upperBound]
myText[myText.startIndex..<znak!.lowerBound]

myText.prefix(through: znak!.upperBound)
myText.prefix(through: znak!.lowerBound)


protocol Runnable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Alive {
    func breath()
    
    func eat()
    
    func grow()
}

extension Alive {
    func breath() {
        print("breath")
    }
    
    func eat() {
        print("eat")
    }
}



//Створення персонажів
struct FirstHero: Runnable {

}

struct SecondHero: Flyable{
    
}

struct ThirdHero: Alive {
    
}

struct FourhtHero: Runnable, Flyable {
    
}

struct FifthHero: Runnable, Alive {
    
}

struct SixthHero: Flyable, Alive {
    
}

//Дефолтна реалізація для всіх персонажів

extension FirstHero {
    func run() {
        print("run")
    }
}

extension SecondHero {
    func fly() {
        print("fly")
    }
}

extension ThirdHero {
    func grow() {
        print("grow")
    }
}

extension FourhtHero {
    func run() {
        print("run")
    }
    
    func fly() {
        print("fly")
    }
}

extension FifthHero {
    func run() {
        print("run")
    }
    
    func grow() {
        print("grow")
    }
}

extension SixthHero {
    func fly() {
        print("fly")
    }
    
    func grow() {
        print("grow")
    }
}

let first = FirstHero()
let second = SecondHero()
let third = ThirdHero()
let fourth = FourhtHero()
let fifth = FifthHero()
let sixth = SixthHero()

first.run()
third.grow()
fourth.fly()
fifth.eat()
sixth.breath()
