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
    var visits = [Int](repeating: -1, count: N) // 파이썬에서 visits = [-1 for _ in range(N)] 과 같은 것
    var dq = [Int]()
    
    for _ in 1...M{
        let input = readLine()!
        let arr = input.split(separator:" ").compactMap { Int($0) }
        relations[arr[0]].append(arr[1])
        relations[arr[1]].append(arr[0])
    }
    for i in relations[0]{
        dq.append(i)
    }
    var cdq = dq[dq.indices] // popFirst()를 사용하기 위해 ArraySlice 타입으로 바꿔줌
    visits[0] = 1
    while !(cdq.isEmpty){
        for i in relations[cdq.popFirst()!]{
            if visits[i] == -1 {
                cdq.append(i)
                visits[i] = 1
            }
        }
        
    }
    if visits.contains(-1){
        print(0)
    }
    else{
        print(1)
    }
}

