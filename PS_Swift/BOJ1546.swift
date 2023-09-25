//
//  BOJ1546.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/09/25.
//

import Foundation
func BOJ1546(){
    let num = Int(readLine()!)!
    let input = readLine()!
    let arr = input.split(separator:" ").map { Int($0)! }
    let max_input = arr.max()!
    var answer = [Double]()
    for i in arr{
        answer.append((Double(i) / Double(max_input)) * 100)
    }
    let sum = answer.reduce(0, +)
    print(sum / Double(num))
}
