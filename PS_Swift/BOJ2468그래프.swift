//
//  BOJ2468그래프.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/27.
//

import Foundation
func BOJ2468(){
    let startTime = Date()
    let N = Int(readLine()!)!
    var visits = [[Int]](repeating: Array(repeating:-1, count: N), count: N) // 2중 repeating문으로 2차원배열 -1을 저장해준다.
    var my_map = [[Int]]() //map으로 저장하려면 2차원배열로 선언해준다.
    var cnt = 0
    let dx = [0, -1, 0, 1]
    let dy = [-1, 0, 1, 0]
    var dq = [(Int, Int)]() // 좌표 append할 수 있는 배열선언
    var dq_cnt = [(Int, Int)]()
    var max_bfs = 1
    var max_array = [Int]()
    for _ in 0..<N{
        var input = readLine()!
        my_map.append(input.split(separator:" ").compactMap { Int($0)}) //input받은 것을 2차원배열my_map에 append
    }
    func BFS(h: Int){
        visits = [[Int]](repeating: Array(repeating:-1, count: N), count: N)
        cnt = 0
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
        cnt = 0
        while !(dq.isEmpty){
            var (x, y) = dq.removeFirst()
            if visits[x][y] == -1{ // 여기서 다른 BFS로 isolation 해야한다.
                dq_cnt.append((x,y))
                visits[x][y] = 1
                while !dq_cnt.isEmpty{
                    var (cx, cy) = dq_cnt.removeFirst()
                    for i in 0..<4{
                        var nx = dx[i] + cx
                        var ny = dy[i] + cy
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
        max_array.append(cnt)
        
        
    }
    var max_value = my_map.flatMap({$0}).max()!
    
    for i in 0..<101{
        if max_value > i{
            BFS(h: i)
        }
        else{
            break
        }
    }
    
    print(max_array.max()!) // cnt값이 이상하게 나옴
    let endTime = Date()
    let executionTime = endTime.timeIntervalSince(startTime)
    print("Execution time: \(executionTime) seconds")

        }
        
    
    
    
    

