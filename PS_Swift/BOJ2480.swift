//
//  BOJ2480.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/09/18.
//

import Foundation
func BOJ2480(){
    let input = readLine()!
    let arr = input.split(separator: " ")
    let A = Int(arr[0])!
    let B = Int(arr[1])!
    let C = Int(arr[2])!
    let del = Set([A, B, C])
    
    if del.count == 1 {
        print(10000 + A*1000)
    }
    else if del.count == 2{
        for i in del {
            let num = [A,B,C].filter{ $0 == i}.count
            if num == 2{
                print(1000 + i*100)
                break
            }
        }
    }
    else {
        print(max(A,B,C) * 100 )
    }
}
