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
    
    for _ in 1...M{ // M번 돌릴려면, 1...M
        let input = readLine()!
        let arr = input.split(separator:" ").compactMap { Int($0) }
        relations[arr[0]].append(arr[1])
        relations[arr[1]].append(arr[0])
    }
    func DFS(x: Int, count: Int){
        print(count)
        if count == M{
            print(1)
            exit(0)
        }
        for j in relations[x]{
            if visits[j] == -1{
                visits[j] = 1
                DFS(x: j, count: count + 1)
                visits[j] = -1
            }
        }
    }
    
    for i in relations[0]{
        if visits[i] == -1{
            visits[i] = 1
            DFS(x: i, count: 1)
            visits[i] = -1
        }
        
        
    }
    print(0)
}


