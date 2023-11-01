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
    var cnt = 1
    let dx = [0, -1, 0, 1]
    let dy = [-1, 0, 1, 0]
    var dq = [(Int, Int)]() // 좌표 append할 수 있는 배열선언
    var dq_cnt = [(Int, Int)]()
    var max_bfs = 0
    for _ in 0..<N{
        var input = readLine()!
        my_map.append(input.split(separator:" ").compactMap { Int($0)}) //input받은 것을 2차원배열my_map에 append
    }
    func BFS(h: Int)-> Int{
        for i in 0..<N{
            for j in 0..<N{
                if my_map[i][j] <= h{
                    visits[i][j] = 1
                }
                if visits[i][j] == -1{
                    dq.append((i, j)) // 선언 -> var dq = [(Int, Int)] / dq.append((i,j))
                }
            }
        }
        while !(dq.isEmpty){
            let (x, y) = dq.removeFirst()
            if visits[x][y] == -1{ // 여기서 다른 BFS로 isolation 해야한다.
                dq_cnt.append((x,y))
                visits[x][y] = 1
                while !dq_cnt.isEmpty{
                    for i in 0..<3{
                        var nx = dx[i] + x
                        var ny = dy[i] + y
                        if nx >= 0 && ny >= 0 && nx < N && ny < N{
                            if visits[nx][ny] == -1{ // 이 때, isolation, 다른 BFS넘어가서 안전영역을 count해야함.
                                dq_cnt.append((nx, ny))
                                visits[nx][ny] = 1
                        }
                            
                        }
                    }
                }
                cnt = cnt + 1
            }
            }
        return cnt
        
        
        }
    
    for i in 0..<101{
        
        max_bfs = max(max_bfs, BFS(h: i))
    }
    print(max_bfs)
    
        }
        
    
    
    
    

