//
//  BOJ1330.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/09/18.
//

import Foundation

func BOJ1330(){
    let input = readLine()!
    let arr = input.split(separator: " ")
    let A = Int(arr[0])!
    let B = Int(arr[1])!
    if A > B {
        print(">")
    }
    else if A < B{
        print("<")
    }
    else{
        print("==")
    }
}
