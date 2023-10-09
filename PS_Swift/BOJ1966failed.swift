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
        var impor_docu = input.split(separator:" ")
        var compare = [String]()
        
        for i in 0...docu - 1 { // compare에 우리가 추적해야할 impor문서를 T로 넣어준다.
            if  i == impor{
                compare.append("T")
            }
            else{
                compare.append("F")
            }
        }
        var count = 0
        let k = 0
        for i in 0..<docu{
            var count = 0
            for j in 1..<docu{
                if Int(impor_docu[i])! < Int(impor_docu[j])!{
                    count = 1
                }
            }
            if count == 1{
                impor_docu.append(impor_docu.removeFirst())
                compare.append(compare.removeFirst())
            }
            print(impor_docu)
        }
        print(compare.firstIndex(of:"T")! + 1)
    }

    // 1 2 3 4
    // 2 3 4 1
    // 3 4 1 2
    // 4 1 2 3
    // 1 2 3 4
    //
}
