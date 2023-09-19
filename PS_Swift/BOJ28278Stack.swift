//
//  BOJ28278Stack.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/09/18.
//

import Foundation
func BOJ28278(){
    var stack = [Int]()
    let num = Int(readLine()!)!
    for _ in 1...num {
        let input = readLine()!
        let arr = input.split(separator:" ")
        if arr.count == 2{
            stack.append(Int(arr[1])!)
        }
        else{
            if Int(arr[0]) == 2{
                if !stack.isEmpty{
                    print(stack.popLast()!)
                }
                else{
                    print(-1)
                }
            }
            else if Int(arr[0]) == 3{
                print(stack.count)
            }
            else if Int(arr[0]) == 4{
                if stack.isEmpty{
                    print(1)
                }
                else {
                    print(0)
                }
            }
            else if Int(arr[0]) == 5{
                if !stack.isEmpty{
                    print(stack.last!)
                }
                else{
                    print(-1)
                }
            }
        }
    }
}


