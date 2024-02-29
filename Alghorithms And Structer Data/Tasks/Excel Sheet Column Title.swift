//Given an integer columnNumber, return its corresponding column title as it a
//ppears in an Excel sheet.
//
//For example:
//
//A -> 1
//B -> 2
//C -> 3
//...
//Z -> 26
//AA -> 27
//AB -> 28
//...
//Example 1:
//Input: columnNumber = 1
//Output: "A"


import Foundation

class Excel {
    func convertToTitle(_ columnNumber: Int) -> String {
        let latinAlphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        var resultStr = ""
        
        var num = columnNumber
        
        while num > 0 {
            if num % 26 == 0 {
                resultStr += "Z"
                num -= 1
            } else {
                resultStr += latinAlphabet[num % 26-1]
            }
            num = Int(num / 26)
            
            
        }
        return String(resultStr.reversed())
    }
}
