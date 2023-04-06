import UIKit

let myString: String? = "Hello"
let myInt: Int? = 10
let myFloat: Float? = nil
let myBool: Bool? = true

print("-------Nil-coalescing operator-------")
let myStringNoOptional = myString ?? "None"
print(myStringNoOptional)

print("-------Optional Binding (if-let)-------")
if let myInt = myInt {
    print(myInt)
} else {
    print("The value is nil")
}

print("-------Guard statement-------")
func myGuardUnwrap() {
    guard let myFloat = myFloat else {
        print("The value is nil")
        return
    }
    
    print(myFloat)
}
myGuardUnwrap()

print("-------- If let value--------")
if let myBool {
    print(myBool)
} else {
    print("The value is nil")
}



class A {
    var myClass: B?
}

class B {
    var text: String = ""
}

let firstExamp = B()
firstExamp.text = "Hello world"

let secondExamp = A()
secondExamp.myClass = firstExamp

print(secondExamp.myClass?.text)

//----------------------------1--------------------------
if let firstMethod = secondExamp.myClass?.text {
    print(firstMethod)
} else {
    print("nil")
}

//----------------------------2--------------------------
print(secondExamp.myClass?.text ?? "nil")

//----------------------------3--------------------------
func classUnwrap() {
    guard let someValue = secondExamp.myClass?.text else {
        print("nil")
        return
    }
    print(someValue)
}

classUnwrap()


