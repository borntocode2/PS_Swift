//
//  BOJ9498.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/09/16.
//

import Foundation

func BOJ9498() {
    let input = readLine()!
    let num = Int(input)!
    if 90 <= num && num <= 100{
        print("A")
    }
    else if 80 <= num && num <= 89{
        print("B")
    }
    else if 70 <= num && num <= 79{
        print("C")
    }
    else if 60 <= num && num <= 69{
        print("D")
    }
    else{
        print("F")
    }
}
