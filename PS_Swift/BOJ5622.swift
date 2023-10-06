//
//  BOJ5622.swift
//  PS_Swift
//
//  Created by 정상화 on 2023/10/06.
//

import Foundation
func BOJ5622(){
    let input = readLine()!
    var count = 0
    for i in input {
        if i == "A" || i == "B" || i == "C"{
            count = count + 3
        }
        else if i == "D" || i == "E" || i == "F"{
            count = count + 4
        }
        else if i == "G" || i == "H" || i == "I"{
            count = count + 5
        }
        else if i == "J" || i == "K" || i == "L"{
            count = count + 6
        }
        else if i == "M" || i == "N" || i == "O"{
            count = count + 7
        }
        else if i == "P" || i == "Q" || i == "R" || i == "S"{
            count = count + 8
        }
        else if i == "T" || i == "U" || i == "V"{
            count = count + 9
        }
        else if i == "W" || i == "Y" || i == "Z" || i == "X"{
            count = count + 10
        }
        else{
            count = count + 11
        }
    }
    print(count)
}
