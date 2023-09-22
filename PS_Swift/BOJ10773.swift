//
//  BOJ10773.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/09/22.
//

import Foundation
func BOJ10773(){
    var stack = [Int]()
    let num = Int(readLine()!)!
    for _ in 1...num{
        let input = Int(readLine()!)!
        if input != 0{
            stack.append(input)
        }
        else{
            stack.popLast()
        }
    }
    print(stack.reduce(0, +))
}
