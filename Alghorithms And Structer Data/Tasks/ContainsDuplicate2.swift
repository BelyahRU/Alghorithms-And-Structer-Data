//
//  ContainsDuplicate2.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 17.03.2024.
//

import Foundation
class ContainsDuplicate2 {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict: [Int:Int] = [:]
        for i in 0..<nums.count {
            
            if dict[nums[i]] != nil && abs(dict[nums[i]]! - i) <= k{
                return true
            }
            dict[nums[i]] = i
        }
        return false
    }
    
    
}
