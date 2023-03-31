import UIKit

let weekDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satuday", "Sunday"]

//вивести кожен день через цикл
for (index, day) in weekDays.enumerated() {
    print("\(index + 1). \(day)")
    if index == 2 {
        break
    }
}


let age = [12, 22, 21, 34, 45, 21, 11, 8, 24, 17, 18, 29]

for i in age {
    if i >= 18 {
        print("Adult")
    } else {
        print("I heva already celebrete: ")
        for year in 1...i {
            print("  - \(year) year")
        }
    }
//    print("I am \(i) age")
}

