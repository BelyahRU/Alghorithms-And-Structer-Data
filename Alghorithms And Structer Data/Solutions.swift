//
//  Solutions.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 21.02.2024.
//

import Foundation

class Solutions {
    let pascalTriange = PascalsTriangle()
    let containsDuplicate = ContainsDuplicate()
    let validSudoku = ValidSudoku()
    let twoSum = TwoSum()
    
    
    //MARK: Main Function witch <on> alghorithm, witch you want
    func setupSolutions() {
        
        //get triangle
        let numRows = 5
        startTriangle(numRows: numRows)
        
        
        //duplicate
        let nums = [1,2,3,1]
        startContainsDuplicate(nums: nums)
        

        
        //valid sudoku
        let board: [[Character]] =
        [["8","3",".",".","7",".",".",".","."]
        ,["6",".",".","1","9","5",".",".","."]
        ,[".","9","8",".",".",".",".","6","."]
        ,["8",".",".",".","6",".",".",".","3"]
        ,["4",".",".","8",".","3",".",".","1"]
        ,["7",".",".",".","2",".",".",".","6"]
        ,[".","6",".",".",".",".","2","8","."]
        ,[".",".",".","4","1","9",".",".","5"]
        ,[".",".",".",".","8",".",".","7","9"]]
        startValidSudoku(board)
        
        //two sums
        let nums2 = [2,7,11,15]
        let target = 9
        startTwoSum(nums2, target)
        
        //Merge Linked List
        var list1 = ListNode(1)
        list1.next = ListNode(1)
        list1.next!.next = ListNode(2)
        list1.next!.next!.next = ListNode(3)
        list1.next!.next!.next!.next = ListNode(3)
        list1.next!.next!.next!.next!.next = ListNode(3)
        
//        var list2 = ListNode(1)
//        list2.next = ListNode(3)
//        list2.next!.next = ListNode(4)
        
        let listSolutionObject = LinkedLists()
//        var res = listSolutionObject.mergeTwoLists(list1, list2)
//        for _ in 0..<6 {
//            print(res!.val)
//            res = res!.next
//        }
        var res = listSolutionObject.deleteDuplicates(list1)
        while true {
            if res?.val == nil {
                break
            }
            print(res!.val)
            res = res!.next
        }
        
        startExcel()
        startSingleNumber()
        
    }
    
    private func startExcel() {
        let excel = Excel()
        print(excel.convertToTitle(702))
    }
    
    private func startSingleNumber() {
        let clas = SingleNumber()
        print(clas.singleNumber1([4,1,2,1,2]))
        print(clas.singleNumber2([4,1,2,1,2]))
    }
    
    
    private func startTriangle(numRows: Int) {
        print("Pascal's triangle \(pascalTriange.generate(numRows))")
    }
    
    private func startContainsDuplicate(nums: [Int]){
        if containsDuplicate.containsDuplicate2([1,2,3,1]) {
            print("YES")
        } else {
            print("NO")
        }
    }
    
    private func startValidSudoku(_ board: [[Character]]) {
        print(validSudoku.isValidSudoku(board))
    }
    
    private func startTwoSum(_ nums: [Int], _ target: Int) {
        print(twoSum.twoSum(nums, target))
    }
    
}
