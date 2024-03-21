//
//  daysOfWeek.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

print("Введите день недели:")

if let day = readLine() {
    
    let lowercasedDay = day.lowercased()
    
    var dayNumber: Int? = nil
    switch lowercasedDay {
        case "понедельник":
            dayNumber = 1
        case "вторник":
            dayNumber = 2
        case "среда":
            dayNumber = 3
        case "четверг":
            dayNumber = 4
        case "пятница":
            dayNumber = 5
        case "суббота":
            dayNumber = 6
        case "воскресенье":
            dayNumber = 7
        default:
            print("Неверный ввод. Пожалуйста, введите корректный день недели.")
    }
    
    if let number = dayNumber {
        print(number)
    }
} else {
    print("Ошибка ввода. Пожалуйста, введите день недели.")
}
