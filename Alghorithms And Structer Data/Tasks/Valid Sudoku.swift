//Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

//Each row must contain the digits 1-9 without repetition.
//Each column must contain the digits 1-9 without repetition.
//Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
//Note:

//A Sudoku board (partially filled) could be valid but is not necessarily solvable.
//Only the filled cells need to be validated according to the mentioned rules.
//Input: board = [["5","3",".",".","7",".",".",".","."]
//                ,["6",".",".","1","9","5",".",".","."]
//                ,[".","9","8",".",".",".",".","6","."]
//                ,["8",".",".",".","6",".",".",".","3"]
//                ,["4",".",".","8",".","3",".",".","1"]
//                ,["7",".",".",".","2",".",".",".","6"]
//                ,[".","6",".",".",".",".","2","8","."]
//                ,[".",".",".","4","1","9",".",".","5"]
//                ,[".",".",".",".","8",".",".","7","9"]]
//Output: true

import Foundation
class ValidSudoku {
    public func isValidSudoku(_ board: [[Character]]) -> Bool {
            var row = Array(repeating: [Int: Int](), count: 9)
            var columns = Array(repeating: [Int: Int](), count: 9)

            var sections: [ [Int: Int]: [Int: Int]] = [:]
            for i in 0..<3 {
                for j in 0..<3 {
                    let key = [i: j]
                    let value: [Int: Int] = [:]
                    sections[key] = value
                }
            }
            for i in 0..<9 {
                for j in 0..<9 {
                    if let n = Int(String(board[i][j])) {
                        if n <= 9 && n >= 0 {
                            if row[i][n] == nil {
                                row[i][n] = 1
                            } else {
                                return false
                            }
                            if columns[j][n] == nil {
                                columns[j][n] = 1
                            } else {
                                return false
                            }
                            let ii = Int(floor(Double(i) / 3.0))
                            let jj = Int(floor(Double(j) / 3.0))
                            if sections[[ii:jj]]![n] == nil {
                                sections[[ii:jj]]![n] = 1
                            } else {
                                return false
                            }
                        } else {
                            return false
                        }
                    } else {
                        continue
                    }
                }
            }
            return true
        }
}
