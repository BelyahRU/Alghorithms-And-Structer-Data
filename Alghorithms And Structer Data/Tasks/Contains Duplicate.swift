//Given an integer array nums, return true if any value appears at least twice in the array, and //return false if every element is distinct.

//Example 1:

//Input: nums = [1,2,3,1]
//Output: true

import Foundation
class ContainsDuplicate {
    
    public func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
    
    public func containsDuplicate2(_ nums: [Int]) -> Bool {
        var dict: [Int:Int] = [:]
        for i in 0..<nums.count {
            if dict[nums[i]] == nil {
                dict[nums[i]] = 1
            } else {
                return true
            }
        }
        return false
    }
    
}
