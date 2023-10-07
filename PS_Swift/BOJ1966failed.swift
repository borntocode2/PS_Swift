//
//  BOJ1966.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/07.
//

import Foundation
func BOJ1966(){
    let case_num = Int(readLine()!)!
    for _ in 1...case_num{
        let docu_num = readLine()!
        let arr = docu_num.split(separator:" ")
        let docu = Int(arr[0])!   // docu의 수
        let impor = Int(arr[1])!  // 순서를 출력할 문서의 순서
        var impor_docu = readLine()! // 중요도 문서들
        var compare = [String]()
        for i in 0...docu - 1{
            if i == impor - 1{
                compare.append("T")
            }
            else{
                compare.append("F")
            }
        }
        
        
    }
}
// 4 2 1 3
// 2 1 3
// 1 3 2
// 3 2 1
// 2 1
// 1
