//
//  forLoop.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names {
    print("Hello, \(name)!")
}

let animals = ["cats": 4, "spiders": 8, "ants": 6]

for (animal, legs) in animals {
    print("\(animal) have \(legs) legs")
}

var result = 1
for _ in 1...10 {
    result *= 3
}
print(result)

let word = "ASTANA"

for letter in word {
    print("The letter is \(letter)")
}

let letters = ["A", "B", "C", "D"]

for (index, letter) in letters.enumerated() {
    print("\(index): \(letter)")
}

