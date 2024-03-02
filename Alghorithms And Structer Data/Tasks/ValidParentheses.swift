//
//  ValidParentheses.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 02.03.2024.
//

import Foundation

class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        if s.count % 2 != 0 {
            return false
        }
        for i in s {
            switch i {
            case "[":
                stack.append("]")
            case "{":
                stack.append("}")
            case "(":
                stack.append(")")
            default:
                if stack.last == i {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        
        
        return stack.isEmpty
        
    }
}
