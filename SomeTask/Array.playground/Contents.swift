import UIKit

//Створіть масив, що включає імена 5 студентів
var studentsName = ["Ruslan", "Bogdan", "Eugene", "Arsen", "Agelina"]

//Створіть змінні newStudent1, newStudent2 та вкажіть їм імена
let newStudent1 = "John"
let newStudent2 = "Andrew"

//Додайте нових студентів до масиву: першого в кінець списку, другого на початок списку. Після цього жодних операцій з NewStudent1 і NewStudent2 не потрібно, продовжуємо роботу з масивами

studentsName.append(newStudent1)
studentsName.insert(newStudent2, at: 0)

//Видаліть двох студентів з масиву: передостаннього та першого

studentsName.removeFirst()
studentsName.remove(at: studentsName.count - 2)

//Створіть ще один масив із двома іменами
let newStudent = ["Mary", "Dmitro"]

//Створіть масив group, який складається із двох попередніх масивів
var group = studentsName + newStudent

//Через команду print() виведіть імена студентів:
    //першого та останнього
    //другого третього

print("Fist student \(group.first), Last studet \(group.last)")

print("Second Student \(group[1]), third student \(group[2])")

//Виведіть у консоль повідомлення:
    //У масиві міститься *** елементів
    //Чи є масив порожнім: *** (виведіть bool значення)

print("In grup we have \(group.count)")
print("Does the group empty? - \(group.isEmpty)")

//Створіть масив “newGroup”, який містить усіх учнів із group
let newGroup = group

group.removeAll()
