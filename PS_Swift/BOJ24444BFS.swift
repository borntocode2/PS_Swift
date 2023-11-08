//
//  BOJ24444BFS.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/11/08.
//

import Foundation
func BOJ24444(){
    var dq = [Int()]
    let input = readLine()!
    let arr = input.split(separator:" ").compactMap{ Int($0)}
    let N = arr[0] // 정점의 수
    let M = arr[1] // 간선의 개수
    let R = arr[2] // 시작지점
    var relations = [[Int]](repeating: [], count: N+1) // 정점의 수 만큼 relations에 배열을 생성
    var visits = [Int](repeating: -1, count: N+1) // 정점의 수 만큼 visits에 0을 생성
    var cnt_rela = [Int](repeating: 0, count: N+1)
    
    for i in 0..<M{ // 양방향 간선에 따라 relations 정보 저장
        var imfo = readLine()!
        var imfo_split = imfo.split(separator:" ").compactMap{ Int($0) }
        relations[imfo_split[0]].append(imfo_split[1])
        relations[imfo_split[1]].append(imfo_split[0])
    }
    for i in 0..<N{
        relations[i].sort()
    }
    for i in relations[R]{ //dq에 시작지점인 relaitons[R]의 모든 원소를 append
        dq.append(i)
        print(i)
    }
    visits[R] = 1
    cnt_rela[R] = 1
    var cnt = 1
    
    while !dq.isEmpty{
        for i in relations[dq.removeFirst()]{
            if visits[i] == 0{
                dq.append(i)
                
            }
            
            
            
        }
    }
    
    
    
    
}
