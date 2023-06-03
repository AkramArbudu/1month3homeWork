//
//  main.swift
//  1month3homeWork
//
//  Created by акрам on 3/6/23.
//

import Foundation

print("Введите свою зарплату:")
let salary = Double(readLine()!) ?? 0.0

print("Введите сумму кредита:")
let loanAmount = Double(readLine()!) ?? 0.0

print("Введите количество лет (от 1 до 3):")
let years = Int(readLine()!) ?? 0


var percent = 0.0
switch years {
case 1:
    percent = 0.3
case 2:
    percent = 0.15
case 3:
    percent = 0.1
default:
    print("Некорректное количество лет")
}


let totalAmount = loanAmount * (1 + percent)
let monthlyPayment = totalAmount / Double(years * 12)


if monthlyPayment > salary * 0.5 {
    print("Кредит одобрен")
} else {
    print("Кредит отклонен")
}

print("2-e задание")

func canGoForAWalk(age: Int, temperature: Int) -> String {
    if age >= 20 && age <= 45 && temperature >= -20 && temperature <= 30 {
        return "Можно идти гулять"
    } else if age < 20 && temperature >= 0 && temperature <= 28 {
        return "Можно идти гулять"
    } else if age > 45 && temperature >= -10 && temperature <= 25 {
        return "Можно идти гулять"
    } else {
        return "Оставайтесь дома"
    }
}

print(canGoForAWalk(age: 75, temperature: -23))
print(canGoForAWalk(age: 18, temperature: 34))
print(canGoForAWalk(age: 56, temperature: 7))
print(canGoForAWalk(age: 30, temperature: 40))
print(canGoForAWalk(age: 15, temperature: -10))


