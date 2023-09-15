//
//  File.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/09/15.
//

import Foundation

func BOJ10430(){
    let input = readLine()!
    let arr = input.split(separator:" ")
    let A = Int(arr[0])!
    let B = Int(arr[1])!
    let C = Int(arr[2])!
    print((A+B)%C)
    print(((A%C) + (B%C))%C)
    print((A*B)%C)
    print(((A%C) * (B%C))%C)
}
