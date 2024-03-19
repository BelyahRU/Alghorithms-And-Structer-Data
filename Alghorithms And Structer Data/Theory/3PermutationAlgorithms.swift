//
//  3PermutationAlgorithms.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 19.03.2024.
//

import Foundation
class PermutationAlgorithms {
    //простая рекурсия
    func perm(_ arr: [Character]) -> [[Character]] {
        var result: [[Character]] = []
        if arr.count == 1 {
            return [arr]
        }
        for letter in arr {
            let tmp = perm(arr.filter { $0 != letter })
            let mapped = tmp.map { [letter] + $0 }
            print(mapped)
            result += mapped
        }
        print("Вызов")
        return result
    }
    
    func perm2(_ lst: inout [Int], _ n: Int) {
        if n < 2 {
            print(lst)
        } else {
            for j in (0..<n).reversed() {
                lst.swapAt(j, n - 1)
                perm2(&lst, n - 1)
                lst.swapAt(j, n - 1)
            }
        }
    }
    
    func perm3(_ arr: inout [Int]) {
        print(arr)
        let N = arr.count
        var p = Array(0..<N)
        var i = 1
        while i < N {
            p[i] -= 1
            let j = i % 2 * p[i]
            arr.swapAt(j, i)
            print(arr)
            i = 1
            while p[i] == 0 {
                p[i] = i
                i += 1
                if i == p.count {
                    break
                }
            }
        }
    }



    

}
