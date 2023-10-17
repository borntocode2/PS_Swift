//
//  BOJ11866.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/16.
//

import Foundation
// 요세푸스 문제, 로직을 생각해내기가 쉽지 않다. 그냥 외워야 할 듯,
// 1 2 3 4 5 6 7 - > 반복문에서 i가 N번째가 아니면(if !(i % N == 0)) popleft로 queue에 넣어주고, if문을 충족한다면 answer에 넣어줌, 계속 뒤로 밀리면서
// 큐를 구성하게 됨.
func BOJ11866(){
    let input = readLine()!
    let arr = input.split(separator:" ")
    let K = Int(arr[0])!
    let N = Int(arr[1])!
    print(K, N)
    
}
