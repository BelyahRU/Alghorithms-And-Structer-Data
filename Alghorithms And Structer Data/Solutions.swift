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
        startPowerOfTwo()
        startBestProfit()
        startReverseWords()
        startValidParentheses()
        startBaseballGame()
        startMiddleOfLL()
        startContainsDuplicate2()
        startReverseLinkedList()
        startPerm()
    }
    
    private func startPerm() {
        let solutionClass = PermutationAlgorithms()
        //print(solutionClass.perm(["a", "b", "c"]))
        var arr = [1 ,2, 3]
        solutionClass.perm3(&arr)
    }
    
    private func startReverseLinkedList() {
        let solutionClass = ReverseLinkedList()
        var list = ListNode(1)
        let head = list
        list.next = ListNode(2)
        list.next!.next = ListNode(3)
        list.next!.next!.next = ListNode(4)
        list.next!.next!.next!.next = ListNode(5)
        solutionClass.reverseList(head)
    }
    
    private func startContainsDuplicate2() {
        let solutionClass = ContainsDuplicate2()
        print(solutionClass.containsNearbyDuplicate([1,0,1,1], 1))
        
    }
    
    private func startMiddleOfLL() {
        let solutionClass = MiddleOfTheLinkedList()
        var list = ListNode(1)
        let head = list
        list.next = ListNode(2)
        list.next!.next = ListNode(3)
        list.next!.next!.next = ListNode(4)
        list.next!.next!.next!.next = ListNode(5)
//        list.next!.next!.next!.next!.next = ListNode(6)
        
        var answer = solutionClass.middleNode(head)
        print(answer!.val)
        
    }
    
    private func startBaseballGame() {
        let solutionClass = BaseballGame()
        print(solutionClass.calPoints(["5","-2","4","C","D","9","+","+"]))
    }
    
    private func startValidParentheses() {
        let solutionClass = ValidParentheses()
        print(solutionClass.isValid("()"))
    }
    
    private func startReverseWords() {
        let solutionClass = ReverseWords()
        print(solutionClass.reverseWords("  hello world  "))
    }
    
    private func startBestProfit() {
        let solutionClass = BestTime()
        print(solutionClass.maxProfit([7,1,5,3,6,4]))
    }
    
    private func startExcel() {
        let excel = Excel()
        print(excel.convertToTitle(702))
    }
    
    private func startPowerOfTwo() {
        let solutionClass = PowerOfTwo()
        print(solutionClass.isPowerOfTwo(-16))
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
