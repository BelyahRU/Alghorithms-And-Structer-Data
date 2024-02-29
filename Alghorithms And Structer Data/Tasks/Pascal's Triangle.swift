///  Given an integer numRows, return the first numRows of Pascal's triangle.
///  In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
///
///  Example 1:
///  Input: numRows = 5
///  Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]






import Foundation
class PascalsTriangle {
    public func generate(_ numRows: Int) -> [[Int]] {
        var arr: [[Int]] = []
        var arr2: [Int]
        for i in 0..<numRows{
            arr2 = []
            for j in 0...i {
                if j != 0 && j != i {
                    arr2.append(arr[i-1][j-1]+arr[i-1][j])
                }else {
                    arr2.append(1)
                }
            }
            arr.append(arr2)
        }
        return arr
    }
    
}
