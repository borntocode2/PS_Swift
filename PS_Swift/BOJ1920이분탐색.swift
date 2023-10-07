//
//  BOJ1920.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/07.
//

import Foundation
func BOJ1920(){
    let N = Int(readLine()!)! // 5
    let input_A = readLine()! // 1 2 3 4 5
    let M = Int(readLine()!)! // 5
    let input_D = readLine()! // 2 3 4 5 6 -> answer : 1 1 1 1 0
    
    let D = input_D.split(separator:" ").compactMap{ Int($0) }
    let A = input_A.split(separator:" ").compactMap{ Int($0) }
    
    for i in D{
        if A.contains(i){
            print(1)
        }
        else{
            print(0)
        }
    }
}
