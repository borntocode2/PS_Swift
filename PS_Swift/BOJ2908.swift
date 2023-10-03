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
    let ans1 = String(arr[0].reversed()) //reversed함수는 Substring타입으로 변환되기 떄문에, String으로 캐스팅 해주어야 한다
    let ans2 = String(arr[1].reversed())
    print(max(ans1, ans2))
}
