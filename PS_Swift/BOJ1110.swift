//
//  BOJ1110.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/03.
//

import Foundation
func BOJ1110(){
    var num = Int(readLine()!)!
    var Count = 0
    if num < 10{
        num = num * 10
    }
    else if num == 0{
        num = 10
    }
    var new_num = num
    while true {
        if new_num < 10{
            new_num = new_num * 10
        }
        else if new_num == 0{
            new_num = 10
        }
        let num1 = new_num / 10
        let num2 = new_num % 10
        let num3 = num1 + num2
        let num4 = (num2 * 10) + (num3 % 10)
        Count += 1
        if num == num4 {
            print(Count)
            return
        }
        new_num = num4
    }
}
