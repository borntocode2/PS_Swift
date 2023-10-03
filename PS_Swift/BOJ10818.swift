//
//  BOJ10818.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/03.
//

import Foundation
func BOJ10818(){
    let num = Int(readLine()!)!
    let input = readLine()!
    let arr = input.split(separator:" ").compactMap{ Int($0) }
    print(arr.min()!, arr.max()!)
    
}
