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
        let input = readLine()! // 중요도 문서들
        var compare = [String]()
        var impor_docu = input.split(separator:" ").compactMap{ Int($0) }
        for i in 0...docu - 1 { // compare에 우리가 추적해야할 impor문서를 T로 넣어준다.
            if  i == impor{
                compare.append("T")
            }
            else{
                compare.append("F")
            }
        }
        var count = 0
        while !(compare.isEmpty) {
            
            if impor_docu.max() == impor_docu[0] {
                if compare[0] == "T"{
                    break
                }
                impor_docu.removeFirst()
                compare.removeFirst()
                count = count + 1
            }
            else{
                impor_docu.append(impor_docu.removeFirst())
                compare.append(compare.removeFirst())
            }
        }
        print(count+1)
        // 1 2 3 4
        // 2 3 4 1
        // 3 4 1 2
        // 4 1 2 3
        // 1 2 3 4
        //
    }
}
