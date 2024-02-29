//
//  Single Number.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 29.02.2024.
//

import Foundation

class SingleNumber {
    func singleNumber1(_ nums: [Int]) -> Int {
        var dict: [Int:Int] = [:]
        for i in 0..<nums.count {
            let value = nums[i]
            if dict[value] == nil {
                dict[value] = 1
            } else {
                dict[value] = nil
            }
        }
        return Array(dict.keys)[0]
    }
    func singleNumber2(_ nums: [Int]) -> Int {
        var val = 0
        for i in nums {
            val ^= i
        }
        return val
    }
}
