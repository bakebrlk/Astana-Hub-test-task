//
//  main.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

print("Введите число:")

if let input = readLine(), let number = Int(input) {
    print(number % 2 == 0 ? "0" : "1")
} else {
    print("Ошибка ввода. Пожалуйста, введите целое число.")
}
