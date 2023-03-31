import UIKit

//Числа Фібоначі

let first = 1
let second = 2
let third = 3
let fourth = 5
let fifth = 8
let sixth = 13

//Зробити суму та множення чисел Фібоначі
var sum = first + second + third + fourth + fifth + sixth
var mult = first * second * third * fourth * fifth * sixth

//Зменшити sum на 10
sum -= 10

//Поділити mult на sum
mult /= sum

print("\(mult) - \(sum) = \(mult - sum)")

let a = 12
let b = 22
let c = 73
let d = 6

//перевірки
if a > b {
    print("1")
    if (a + b) < c {
        print("4")
    } else if (a - b) > c {
        print("5")
    }
} else if a < b {
    print("2")
    if a < b || c < b {
        print("6")
    } else if (a > d && c > d) && d > b{
        print("7")
    }
} else {
    print("3")
    if a < 0 {
        print("9")
    }
}


