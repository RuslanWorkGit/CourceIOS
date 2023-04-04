import UIKit

let entireScore = 60
let myScore = 87

//Guard else
func checkRate(myScore: Int, entireScore: Int) {
    guard myScore > entireScore else {
        print("You didn't pass exam")
        return
    }
    print("Good job, You did it!")
}

checkRate(myScore: myScore, entireScore: entireScore)

//Switch case
switch myScore {
case 0...60 where myScore <= 100: print("You didn't pass exam")
case 61...100 where myScore <= 100: print("Good job, You did it!")
default: print("Wrong, value of myScore")
}

//Check day of week

let dayOfWeek = 4

switch dayOfWeek {
case 1: print("Monday")
case 2: print("Tuesday")
case 3: print("Wednesday")
case 4: print("Thursday")
    fallthrough
case 5: print("Friday")
case 6: print("Satuday")
case 7: print("Sanday")
default: print("Wrong value, use it in range 1 to 7")
}



