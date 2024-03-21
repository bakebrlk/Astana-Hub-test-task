//
//  lastDigit.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

print("Введите число:")

if let input = readLine(), let number = Int(input), number > 0 {

    let lastDigit = number % 10
    print(lastDigit)    
} else {
    print("Ошибка ввода. Пожалуйста, введите целое число.")
}
