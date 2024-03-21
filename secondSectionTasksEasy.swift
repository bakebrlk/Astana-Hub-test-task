//
//  secondSectionTasksEasy.swift
//  swiftProject
//
//  Created by bakebrlk on 21.03.2024.
//

import Foundation

// int-cmp
print("Введите два числа через пробел:")
if let input = readLine(){
    let numbers = input.split(separator: " ").compactMap({ Int($0) })
    let a = numbers[0]
    let b = numbers[1]
    
    if a > b {
        print("1")
    } else if a < b {
        print("-1")
    } else {
        print("0")
    }
    
}

// max-of-three
print("Введите три числа через пробел:")
if let input = readLine() {
    let numbers = input.split(separator: " ").compactMap({ Int($0) })
    
    let a = numbers[0]
    let b = numbers[1]
    let c = numbers[2]
    
    let maxNumber = max(a, max(b, c))

    print(maxNumber)
}

// sqr-sum-1-n
print("Введите число n:")
if let input = readLine(), let n = Int(input) {
    guard n >= 1 else {
        print("Число n должно быть больше или равно 1.")
        exit(0)
    }

    var sum = 0
    for number in 1...n {
        sum += number * number
    }

    print(sum)
}

// print-even-a-b
print("Введите два числа через пробел (a и b):")
if let input = readLine(){
    let numbers = input.split(separator: " ").compactMap({ Int($0) })
    let a = numbers[0]
    let b = numbers[1]
    
    guard a <= b else {
        print("Ошибка. Первое число должно быть меньше или равно второму.")
        exit(0)
    }
    
    for number in a...b {
        if number % 2 == 0 {
            print(number)
        }
    }
}

// pow-a-b
print("Введите два числа через пробел (a и b):")
if let input = readLine(){
    
    let numbers = input.split(separator: " ").compactMap({ Int($0) })
    let a = numbers[0]
    let b = numbers[1]
    
    guard b > 0 else {
        exit(0)
    }

    var result = 1
    for _ in 1...b {
        result *= a
    }

    print(result)
}

// calc-deposit
func calculateDepositAmount(afterMonths n: Int, withInterestRate k: Int, initialBalance b: Int) -> Double {
 
    guard n >= 0 && n <= 10000 else {
        return 0
    }
    
    guard k >= 0 && k <= 100 else {
        return 0
    }
    
    guard b >= 0 && b <= 10000 else {
        return 0
    }

    var depositAmount: Double = Double(b)
    for _ in 1...n {
        depositAmount += depositAmount * (Double(k) / 100.0)
    }

    return depositAmount
}

print("Введите три числа через пробел (n k b):")
if let input = readLine(){
    
    let numbers = input.split(separator: " ").compactMap({ Int($0) })
    
    let n = numbers[0]
    let k = numbers[1]
    let b = numbers[2]
    
    let result = calculateDepositAmount(afterMonths: n, withInterestRate: k, initialBalance: b)
    print(result)
}

// Массивы Min
func minNumber(from array: [Int]) -> Int {

    guard !array.isEmpty else {
        return 0
    }
    
    if let min = array.min() {
        return min
    } else {
        return 0
    }
}

if let input = readLine(){
    let numbers = input.split(separator: " ").compactMap({ Int($0) })
    print(minNumber(from: numbers))
}

// range
func createRangeArray(ofSize n: Int) -> [Int] {

    guard n > 0 && n <= 10_000 else {
        return []
    }
    
    var result: [Int] = []
    for i in 1...n {
        result.append(i)
    }
    
    return result
}

print("Введите число n:")
if let input = readLine(), let n = Int(input) {
    let resultArray = createRangeArray(ofSize: n)
    print(resultArray)
}

// sum
func sum(array: [Int]) -> Int {
    var res = 0
    
    for num in array{
        res += num
    }
    
    return res
}

print("Введите числа через пробел:")
if let input = readLine(){
    let numbers = input.split(separator: " ").compactMap({ Int($0) })
    print(sum(array: numbers))
}

// sort
func mergeSort(_ array: inout [Int]) {

    func mergeSort(_ array: inout [Int], left: Int, right: Int) {
        guard left < right else { return }
        
        let middle = left + (right - left) / 2
        
        mergeSort(&array, left: left, right: middle)
        mergeSort(&array, left: middle + 1, right: right)
        
        merge(&array, left: left, middle: middle, right: right)
    }
    
    func merge(_ array: inout [Int], left: Int, middle: Int, right: Int) {
        var tempArray = Array(repeating: 0, count: right - left + 1)
        
        var leftIndex = left
        var rightIndex = middle + 1
        var tempIndex = 0
        
        while leftIndex <= middle && rightIndex <= right {
            if array[leftIndex] <= array[rightIndex] {
                tempArray[tempIndex] = array[leftIndex]
                leftIndex += 1
            } else {
                tempArray[tempIndex] = array[rightIndex]
                rightIndex += 1
            }
            tempIndex += 1
        }
        
        while leftIndex <= middle {
            tempArray[tempIndex] = array[leftIndex]
            leftIndex += 1
            tempIndex += 1
        }
        
        while rightIndex <= right {
            tempArray[tempIndex] = array[rightIndex]
            rightIndex += 1
            tempIndex += 1
        }
        
        for index in 0..<tempArray.count {
            array[left + index] = tempArray[index]
        }
    }
    
    mergeSort(&array, left: 0, right: array.count - 1)
}

print("Введите числа через пробел:")
if let input = readLine(){
    var numbers = input.split(separator: " ").compactMap({ Int($0) })
    mergeSort(&numbers)
    print(numbers)
}
