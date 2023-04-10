import UIKit

//функція змінює місцями значення
func swap<MyType>(val1: inout MyType, val2: inout MyType) {
    let someValue = val1
    
    val1 = val2
    val2 = someValue
}

var someNumber1 = 123
var someNumber2 = 234

swap(val1: &someNumber1, val2: &someNumber2)

print(someNumber1)
print(someNumber2)

var text1 = "Hello"
var text2 = "Hi"

swap(val1: &text1, val2: &text2)
print(text2)

//Функція приймає 2 значення і повертає Tuple з ними

func tupleBack<T>(val1: T, val2: T)  -> (firstValue: T, secondValue: T) {
    (val1, val2)
}

let myValue = tupleBack(val1: 10, val2: 20)
myValue.firstValue

let (first, second) = tupleBack(val1: 22, val2: 34)
//print
//second

//Функція повертає суму

func myAdd<T: AdditiveArithmetic>(val1: T, val2: T) -> T{
    val1 + val2
}

myAdd(val1: someNumber1, val2: someNumber2)
myAdd(val1: 12.44, val2: 13.56)


struct MyDict<MyType: Hashable> {
    
    var myDict: [MyType: MyType] = [:]
    
    mutating func addElement(key: MyType, value: MyType) {
        myDict[key] = value
    }
    
    func getMyValue(key: MyType) {
        let myEll = myDict[key]
        
        if let myEll {
            print(myEll)
        } else {
            print("Unknown key")
        }
    }
}

var newDictionary = MyDict<String>()

newDictionary.addElement(key: "First", value: "Hello world")
newDictionary.addElement(key: "Second", value: "Hi")

newDictionary.getMyValue(key: "First")
newDictionary.getMyValue(key: "Third")

var newDictionary2 = MyDict<Int>()

newDictionary2.addElement(key: 1, value: 123)
newDictionary2.addElement(key: 2, value: 0)
newDictionary2.addElement(key: 3, value: 849)

newDictionary2.getMyValue(key: 2)
newDictionary2.getMyValue(key: 4)
