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
//
//        //get triangle
//        let numRows = 5
//        startTriangle(numRows: numRows)
//
//
//        //duplicate
//        let nums = [1,2,3,1]
//        startContainsDuplicate(nums: nums)
//
//
//
//        //valid sudoku
//        let board: [[Character]] =
//        [["8","3",".",".","7",".",".",".","."]
//         ,["6",".",".","1","9","5",".",".","."]
//         ,[".","9","8",".",".",".",".","6","."]
//         ,["8",".",".",".","6",".",".",".","3"]
//         ,["4",".",".","8",".","3",".",".","1"]
//         ,["7",".",".",".","2",".",".",".","6"]
//         ,[".","6",".",".",".",".","2","8","."]
//         ,[".",".",".","4","1","9",".",".","5"]
//         ,[".",".",".",".","8",".",".","7","9"]]
//        startValidSudoku(board)
//
//        //two sums
//        let nums2 = [2,7,11,15]
//        let target = 9
//        startTwoSum(nums2, target)
//
//        //Merge Linked List
//        var list1 = ListNode(1)
//        list1.next = ListNode(1)
//        list1.next!.next = ListNode(2)
//        list1.next!.next!.next = ListNode(3)
//        list1.next!.next!.next!.next = ListNode(3)
//        list1.next!.next!.next!.next!.next = ListNode(3)
//
//        //        var list2 = ListNode(1)
//        //        list2.next = ListNode(3)
//        //        list2.next!.next = ListNode(4)
//
//        let listSolutionObject = LinkedLists()
//        //        var res = listSolutionObject.mergeTwoLists(list1, list2)
//        //        for _ in 0..<6 {
//        //            print(res!.val)
//        //            res = res!.next
//        //        }
//        var res = listSolutionObject.deleteDuplicates(list1)
//        while true {
//            if res?.val == nil {
//                break
//            }
//            print(res!.val)
//            res = res!.next
//        }
        
//        startExcel()
//        startSingleNumber()
//        startPowerOfTwo()
//        startBestProfit()
//        startReverseWords()
//        startValidParentheses()
//        startBaseballGame()
//        startMiddleOfLL()
//        startContainsDuplicate2()
//        startReverseLinkedList()
//        startPerm()
//        start()
//        start100CodeRun()
//        start101()
//        start106()
//        start220CodeRun()
//        start168()
//        start77CodeRun()
        print(quickSort(array: Array(Set([1, 2, -3, 0 ,81, -64]))))
        SortAlgorithms().start()
        coderun50()
        coderun51()
    }
    func coderun51() {
        let wordsArray = ["one", "two", "one", "tho", "three"]
        var resultArray = [Int]()
        var dict = [String: Int]()
        for i in wordsArray {
            if dict[i] == nil {
                dict[i] = 0
                resultArray.append(0)
            } else {
                dict[i] = dict[i]! + 1
                resultArray.append(dict[i]!)
            }
        }
        print(dict)
        print(dict.values)
        print(resultArray)
    }
    
    func coderun50() {
        let wordsArray = [
            "q", "w", "e", "r", "t", "y", "u", "i", "o", "p",
            "a", "s", "d", "f", "g", "h", "j", "k", "l",
            "z", "x", "c", "v", "b", "n", "m"
        ]
        var dict = [String: Int]()

        for i in wordsArray {
            if dict[i] == nil {
                dict[i] = 1
            } else {
                dict[i] = dict[i]! + 1
            }
        }
        
        let sortedDict = dict.sorted { first, second in
            if first.value != second.value {
                return first.value > second.value
            } else {
                return first.key < second.key
            }
        }

        print(sortedDict.first!.key)

    }
    
    func quickSort(array: [Int]) -> [Int] {
        if array.count <= 1{
            return array
        }

        let pivot = array[array.count / 2]

        let leftSide = array.filter({ $0<pivot })
        let rightSide = array.filter({ $0>pivot })

        return quickSort(array: leftSide) + [pivot] + quickSort(array: rightSide)
    }
    
    private func start() {
//        let solutionClass = SortAlgorithms()
//        solutionClass.start()
    }
    
    private func start106() {
        func binarySearch(array: [Int], k: Int){
            var low = 0
            var high = array.max()!
            var len = 0
            while low < high {
                let mid = (low + high) / 2
                
                if mid == 0 {
                    low = mid + 1
                    continue
                }
                var count = 0
                for i in array {
                    count += i / mid
                }
                
                if count < k {
                    high = mid - 1
                } else {
                    low = mid + 1
                    len = max(len, mid)
                }
            }
            print(len)
            
        }
        binarySearch(array: [6,
                     5,
                     1,
                     0,], k: 11)
        
    }
    
    private func start101() {
        func binarySearch(w: Int, h: Int, n: Int) -> Int{
            var low = 0
            var high = Int(max(w, h)) * n

            while high > low {
                let mid = low + (high - low) / 2
                let countDip = (mid / w) * (mid / h)
                
                if countDip < n {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }
            print(high, low)
            return high
        }
        
        print("solution for 101")
        
        print(binarySearch(w: 2, h: 3, n: 10))
    }
    
    private func start99CodeRun() {
        func binarySearch(array: [Int], value: Int) -> String {
            if array.count == 1{
                if array.first! == value {
                    return "YES"
                } else {
                    return "NO"
                }
            }

            var high = array.count - 1
            var low = 0

            while low <= high {
                let mid = low + (high - low) / 2

                if array[mid] == value {
                    return "YES"
                } else if array[mid] > value {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            }
            if low >= array.count || low < 0 {
                if array[high] == value {
                    return "YES"
                } else {
                    return "NO"
                }
            } else if high >= array.count || high < 0 {
                if array[low] == value {
                    return "YES"
                } else {
                    return "NO"
                }
            } else {
                if array[low] == value || array[high] == value {
                    return "YES"
                } else  {
                    return "NO"
            }
            }

            
        }

        let NMArray = readLine()!
        let nArray = readLine()!.split(separator: " ").map{ Int($0)! }
        let kArray = readLine()!.split(separator: " ").map{ Int($0)! }

        for i in kArray {
            print(binarySearch(array: nArray, value: i))
        }
    }
    
    private func start100CodeRun() {
        
        func binarySearch(array: [Int], value: Int) -> Int {
            if array.count == 1 {
                return array.first!
            }
            var low = 0
            var high = array.count - 1

            while low <= high {
                let mid = low + (high - low) / 2
                if array[mid] == value{
                    return array[mid]
                } else if array[mid] > value {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            }
            if high >= array.count || high < 0{
                return array[low]
            } else if low < 0 || low >= array.count{
                return array[high]
            } else {
                if abs(array[low] - value) > abs(array[high] - value) {
                    return array[high]
                } else if abs(array[low] - value) == abs(array[high] - value) {
                    if array[low] > array[high] {
                        return array[high]
                    } else {
                        return array[low]
                    }
                    
                } else {
                    return array[low]
                }
            }
            
            
        }

        let nArr = [-5, 1, 1, 3, 5, 5, 8, 12, 13, 16]
        let kArr = [0, 3, 7, -17, 23, 11, 0, 11, 15, 7]
        print("solution for 100")
        for i in kArr {
            print(binarySearch(array: nArr, value: i))
        }
    }
    
    
    
    private func start220CodeRun() {
        func binarySearch(array: [Int], value: Int) -> Int{
            if array.count == 1 {
                return array.first!
            }
            var low = 0
            var high = array.count - 1
            while low <= high {
                let mid = low + (high - low) / 2
                
                if array[mid] == value {
                    return array[mid]
                } else if array[mid] < value {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }
            print(low, high)
            if high < 0 {
                return array[0]
            } else if low >= array.count {
                return array.last!
            } else {
                if abs(value - array[low]) > abs(value - array[high]) {
                    return array[high]
                } else {
                    return array[low]
                }
            }
        }
        
        print(binarySearch(array: [-29, -20, -17, -13, -12, -11, -2, -1, 6, 7, 9, 14, 18, 24, 25, 29], value: 26))
    }
    
    private func start168() {
        let countObjects = 4
        let arrayOfPotentials = [-7, -1,0, -3, -9]


        var totalBP = 1
        var BP2 = 1
        var counter0 = 0

        for i in arrayOfPotentials {
            if i == 0 {
               counter0 += 1
               totalBP *= i
            } else {
               totalBP *= i
               BP2 *= i
            }
        }
        var maxBP = Int.min
        var itemToGive = arrayOfPotentials[0]
        if counter0 > 1 {
            print(0)
        } else {
            for potential in arrayOfPotentials {
                if potential != 0 {
                    let currentBP = totalBP / potential
                    if currentBP > maxBP {
                        maxBP = currentBP
                        itemToGive = potential
                    }
                } else {
                    if maxBP < BP2 {
                        itemToGive = potential
                        maxBP = BP2
                    }
                }
                print(potential, maxBP)
            }
            print(itemToGive)
        }
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
