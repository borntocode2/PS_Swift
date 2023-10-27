//
//  BOJ2468그래프.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/27.
//

import Foundation
func BOJ2468(){
    let N = Int(readLine()!)!
    var visits = [[Int]](repeating: Array(repeating:-1, count: N), count: N) // 2중 repeating문으로 2차원배열 -1을 저장해준다.
    var my_map = [[Int]]() //map으로 저장하려면 2차원배열로 선언해준다.
    for _ in 1...N{
        var input = readLine()!
        my_map.append(input.split(separator:" ").compactMap { Int($0)}) //input받은 것을 2차원배열my_map에 append
    }
    
}
