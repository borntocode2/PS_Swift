//
//  BOJ4673.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/06.
//

import Foundation
func BOJ4673(){
    var self_numbers = [Int]()
    var count = 0
    for i in 1...10000{
        for j in String(i){
            count = count + Int(String(j))!
        }
        self_numbers.append(i + count)
        count = 0
    }
    for i in 1...10000{
        if !self_numbers.contains(i){
            print(i)
        }
    }
    
    
}
