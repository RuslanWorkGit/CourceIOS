import UIKit

enum CarType: String {
    case sedan = "Sedan"
    case universal
    case hatchback
    case coupe = "Coupe"
    case cabriolet = "Cabriolet"
    case van = "Van"
    case minibus
}

let myCar = CarType.hatchback
print(myCar)
print(myCar.rawValue)

let myCar2: CarType = .sedan
print(myCar2)
print(myCar2.rawValue)

enum Sport {
    case football
    case basketball
    case voleyball
    case tenis
    case powerLifting
    case box
    case djudo
    case serfing
    case eating
    
    func amountOfPlayers() -> String {
        switch self {
        case .football: return "In team 11 players"
        case .basketball: return "In team 6 palyers"
        case .voleyball: return "In team 6 plaeyrs"
        case .tenis: return "In team 1 palayer"
        case .powerLifting: return "In team 1 player"
        case .box: return "In team 1 palyer"
        case .djudo: return "In team 1 player"
        case .serfing: return "In team 1 player"
        case .eating: return "In team 1-4 player"
        }
    }
}

let mySport: Sport = .football
let chekSport = mySport.amountOfPlayers()
print(chekSport)

enum Salary {
    case student(String)
    case laborant(Int)
    case trainee(Int)
    case junior(Int)
    case midle(Float)
    case senior(Float)
}

func checkSalary(position: Salary) -> String {
    switch position {
    case .student(let studentMoney): return "Student get \(studentMoney) of money"
    case .laborant(let laborantMoney): return "Laborant get \(laborantMoney) of money"
    case .trainee(let traineeMoney): return "Trainee get \(traineeMoney) of money"
    case .junior(let juniorMoney): return "Junior get \(juniorMoney) of money"
    case .midle(let midleMoney): return "Midle get \(midleMoney) of money"
    case .senior(let seniorMoney): return "Senior get \(seniorMoney) of money"
    }
}

let myPosition = Salary.student("Nothing")
let result = checkSalary(position: myPosition)
print(result)

let myPosition1 = Salary.junior(800)
let result1 = checkSalary(position: myPosition1)
print(result1)


enum DayOfWeek: Int, CaseIterable{
    
case monday = 1, tuesday, wednesda, thursday, friday, satuday, sunday
}

let days = DayOfWeek.allCases
let myDay = days[1]
myDay.rawValue
