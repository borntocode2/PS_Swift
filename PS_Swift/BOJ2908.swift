//
//  BOJ2908.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/03.
//

import Foundation
func BOJ2908(){
    let input = readLine()!
    let arr = input.split(separator:" ")
    let ans1 = String(arr[0].reversed())
    let ans2 = String(arr[1].reversed())
    print(max(ans1, ans2))
}
