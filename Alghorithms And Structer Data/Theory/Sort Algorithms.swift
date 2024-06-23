//
//  перестановки.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 30.04.2024.
//

import Foundation
class SortAlgorithms {
    
    func start() {
        var array = [-1,-1, -20, -17, 25, 24, 18, -12, -11, 14, 9, 7, -2, -29, -13, 29, 6]
        let result = quickSort(array: array)
        
        print(result)
    }
    
    
    
    func bubbleSort(array: [Int]) -> [Int] {
        var arr = array
        let n = arr.count
        for i in 0..<n {
            var swapped = false
            for j in 0..<n-i-1 {
                if arr[j] > arr[j+1] {
                    arr.swapAt(j, j+1)
                    swapped = true
                }
            }
            // Если на текущей итерации не было обменов, массив уже отсортирован
            if !swapped {
                break
            }
        }
        return arr
    }
    
    func mergeSort(array: [Int]) -> [Int]{
        
        //базовый случай
        if array.count == 1 {
            return array
        }
        
        let middleIndex = array.count / 2
        //рекурсивный случай
        let leftArray = mergeSort(array: Array(array[0..<middleIndex]))
        let rightArray = mergeSort(array: Array(array[middleIndex..<array.count]))
        
        
        return merge(leftArr: leftArray, rightArr: rightArray)
    }
    
    func merge(leftArr: [Int], rightArr: [Int]) -> [Int] {
        var mergedArray = [Int]()
        var leftIndex = 0
        var rightIndex = 0
        
        while leftIndex < leftArr.count && rightIndex < rightArr.count {
            if leftArr[leftIndex] < rightArr[rightIndex] {
                mergedArray.append(leftArr[leftIndex])
                leftIndex += 1
            } else {
                mergedArray.append(rightArr[rightIndex])
                rightIndex += 1
            }
        }
        
        if rightIndex == rightArr.count {
            for i in leftIndex..<leftArr.count {
                mergedArray.append(leftArr[i])
            }
        } else {
            for i in rightIndex..<rightArr.count {
                mergedArray.append(rightArr[i])
            }
        }
        
        return mergedArray
    }
    
    
    func quickSort(array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
        }
//        array.removeFirst()
        var pivot = array[array.count / 2]//опорное число
        var leftArray = array.filter{$0 < pivot}
        var rightArray = array.filter{$0 > pivot}
        var pivotArray = array.filter{$0 == pivot}
        
        return quickSort(array: leftArray) + pivotArray +  quickSort(array: rightArray)
    }

    
}
