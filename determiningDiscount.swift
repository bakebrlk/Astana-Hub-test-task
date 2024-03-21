//
//  main.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

print("Введите сумму покупки:")

if let input = readLine(), let purchaseAmount = Int(input) {
    var discountPercent: Int = 0

    if purchaseAmount >= 0 && purchaseAmount <= 1000 {
        discountPercent = 0
    } else if purchaseAmount > 1000 && purchaseAmount <= 5000 {
        discountPercent = 5
    } else if purchaseAmount > 5000 && purchaseAmount <= 10000 {
        discountPercent = 10
    } else {
        discountPercent = 15
    }

    print("Скидка: \(discountPercent)%")
} else {
    print("Ошибка ввода. Пожалуйста, введите корректную сумму покупки.")
}
