import UIKit

class Phone {
    
    let number: Int
    let model: String
    let weight: Int
    
    init (phoneNumber: Int, modelName: String, phoneWeight: Int) {
        self.number = phoneNumber
        self.model = modelName
        self.weight = phoneWeight
    }
    
    init (phoneNum: Int, modelNam: String) {
        self.number = phoneNum
        self.model = modelNam
        self.weight = 000
    }
    
    convenience init () {
        self.init(phoneNumber: 000000000, modelName: "None", phoneWeight: 000)
    }
    
    func recieveCall(name: String) {
        print("\(name) is calling")
    }
    
    func recieveCall(name: String, number: Int) {
        print("\(name) is calling, his/her number is 0\(number)")
    }
    
    func getNumber() -> Int {
        return number
    }
    
    func sendMessage(number: [Int], message: String) {
        for user in number {
            print("The message <<\(message)>> send to number 0\(user)")
        }
    }
}

let myPhone = Phone(phoneNumber: 509213453, modelName: "Iphone XR", phoneWeight: 182)
let somePhone = Phone(phoneNumber: 953890301, modelName: "Iphone 14", phoneWeight: 190)

let phoneArray = [myPhone, somePhone]

for i in phoneArray {
    print("----------------------------------------")
    i.recieveCall(name: "Hue")
    print("He is callint to number 0\(i.getNumber())")
    i.recieveCall(name: "John", number: 930421213)
    i.sendMessage(number: [953489293, 783412533, 98138592], message: "Hello, I am from company Oryflame, do you need help?")
}


let somePhone1 = Phone()
let somePhone2 = Phone(phoneNum: 828498193, modelNam: "Some Phone")
