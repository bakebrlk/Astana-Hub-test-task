//
//  sum.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

print("Введите число n:")
if let input = readLine(), let n = Int(input) {

    let sum = n * (n + 1) / 2

    print(sum)
} else {
    print("Ошибка ввода. Пожалуйста, введите целое число.")
}

