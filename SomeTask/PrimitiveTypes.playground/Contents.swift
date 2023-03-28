import UIKit

//Створіть змінні типів Int, String, Float та задайте в них цифрові значення

let number = 145
let street = "12"
let floatNum: Float = 10.2

//Створіть змінну "sum" типу Double, в якій буде міститись сума всіх попередніх змінних. Використовуйте наведення типів

let sum = Double(number) + Double(street)! + Double(floatNum)

//Створіть по одному Typealias, які відповідають типам: String, Int, Float

typealias Country = String
typealias Year = Int
typealias Price = Float

//Створіть три іменовані Tuple з даними:
    //Фільм - Назва фільму та рік його випуску
    //Смартфон - Назва смартфона та його ціна
    //Країна - Назва країни та її столиця


let movie: (String, Year) = ("New Spider man", 2012)
let phone: (phoneName: String, phonePrice: Price) = ("Iphone XR", 599.0)
let country: (country: Country, capital: String) = ("Ukraine", "Kyiv")

//Виведіть за допомогою команди print:
    //Назва фільму, Назва телефону, Назва країни
    //Потім порожній print()
    //Рік випуску фільму, ціна телефону, столиця країни

print("The name of film is \(movie.0), phone name is \(phone.phoneName), country is \(country.country)")
print()
print("Date of realese film is \(movie.1), phone price is \(phone.phonePrice), country capital is \(country.capital)")

