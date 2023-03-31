import UIKit

//Створіть 3 dictionary, додайте в кожен не менше трьох елементів:
    //String: String - Країна: Столиця
    //String: Int - Місто: Поштовий код
    //String: Bool - Ім'я людини: Чи студент він

var country = ["Ukraine" : "Kyiv", "UK" : "London", "France" : "Paris", "USA" : "Washington"]
var postIndex = ["Kyiv" : 03056, "Sumy" : 40003, "London" : 48299, "Paris" : 93001]
var checkStudent = ["Ruslan" : true, "Anjey" : false, "Arsen" : true]

//Створіть ще одну змінну "all Items" типу Dictionary, в яку збережіть по одному елементу з кожного зі словників вище і виведіть її значення в консоль (На жовті warnings і "optional(...)" значення в консолі ми не звертаємо уваги)


var allItems: [String : Any] = ["Ukraine" : country["Ukraine"], "London" : postIndex["London"], "Ruslan" : checkStudent["Ruslan"]]

//Видаліть у перших трьох словниках по одному елементу

country.removeValue(forKey: "France")
postIndex["Paris"] = nil
checkStudent.removeValue(forKey: "Anjey")

//Створіть змінні:
    //Масив містить тільки ключі з останнього Dictionary
    //Масив містить тільки значення з останнього Dictionary

var dictValue = allItems.values
var dictKey = allItems.keys

//Виведіть у консоль їх значення

print("Dictionary value: \(dictValue)")
print("Dictionary key: \(dictKey)")

//Змініть місця значення двох ключів у словнику “all Items”. Не забувайте, що ви завжди можете створювати додаткові змінні

let first = allItems["Ukraine"]
let last = allItems["London"]

allItems["Ukraine"] = last
allItems["London"] = first
