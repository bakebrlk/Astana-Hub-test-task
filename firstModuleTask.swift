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


func formatLicensePlate(_ s: String, _ n: Int) -> String {

    let cleanedString = s.replacingOccurrences(of: "-", with: "")

    let uppercaseString = cleanedString.uppercased()

    var result = ""
    var counter = 0

    for char in uppercaseString.reversed() {
        if counter == n {
            result.insert("-", at: result.startIndex)
            counter = 0
        }
        result.insert(char, at: result.startIndex)
        counter += 1
    }

    return result
}

//License Plate
print("Введите номер DMV:")

if let inputString = readLine() {
    
    print("Введите длины группы: ")
    if let inputLength = readLine(), let groupLength = Int(inputLength){
        
        let formattedLicensePlate = formatLicensePlate(inputString, groupLength)
        
        print(formattedLicensePlate)
        
    }
}else {
    print("Ошибка ввода. Пожалуйста, введите номер DMV.")
}
