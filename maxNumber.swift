//
//  maxNumber.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

print("Введите два числа через пробел:")

if let input = readLine(){
    
    let numbers: [Int] = input.split(separator: " ").compactMap({ Int($0) })
    
    if let maxNumber = numbers.max() {
        print(maxNumber)
    }
} else {
    print("Ошибка ввода. Пожалуйста, введите два числа через пробел.")
}

