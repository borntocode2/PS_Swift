//
//  BOJ13023그래프.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/23.
//

import Foundation
func BOJ13023(){
    let input = readLine()!
    let arr = input.split(separator:" ").compactMap { Int($0) }
    let N = arr[0]
    let M = arr[1]
    
    var relations = [[Int]](repeating: [], count: N) //repeating: count: -> relations변수를 [] 리스트로 repeating(초기화)한다
    var visits = [Int](repeating: -1, count: N) // 파이썬에서 visits = [False] * N 과 같은 것
    print(visits)
    for _ in 0...M{
        let input = readLine()!
        let arr = input.split(separator:" ").compactMap { Int($0) }
        relations[arr[0]].append(arr[1])
        relations[arr[1]].append(arr[0])
    }
    
    
}
