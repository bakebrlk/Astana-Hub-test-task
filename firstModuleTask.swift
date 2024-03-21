//
//  firstModuleTask.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

// sum-1-n
print("Введите число n:")
if let input = readLine(), let n = Int(input) {

    if 1 <= n && n <= 65535 {
        
        let sum = n * (n + 1) / 2
        print(sum)
    }
} else {
    print("Ошибка ввода. Пожалуйста, введите целое число.")
}

// Complete the Word
func canConstruct(_ letters: String, _ word: String) -> Bool {
    var letterCounts = [Character: Int]()
    
    for letter in letters {
        letterCounts[letter, default: 0] += 1
    }
    
    for char in word {
        if let count = letterCounts[char], count > 0 {
            letterCounts[char] = count - 1
        }
    }
    
    for letter in letters {
        if letterCounts[letter]!  > 0 {
            return false
        }
    }
    
    return true
}

print("Введите набор букв:")
if let letters = readLine(), !letters.isEmpty {
    print("Введите слово:")
    if let word = readLine(), !word.isEmpty {
        
        let result = canConstruct(letters, word)
        print(result)
    }
}
