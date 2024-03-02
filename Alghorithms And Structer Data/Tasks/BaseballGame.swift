//
//  BaseballGame.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 02.03.2024.
//

import Foundation
class BaseballGame {
    func calPoints(_ operations: [String]) -> Int {
        var stack: [Int] = []
        var result = 0
        guard let num = Int(operations[0]) else {
            return result
        }
        for i in 0..<operations.count {
            if let num = Int(operations[i]) {
                stack.append(num)
            } else {
                switch operations[i] {
                case "+":
                    let val = stack.popLast()!
                    let nextval = stack.last!
                    stack.append(val)
                    stack.append(val + nextval)
                case "C":
                    stack.removeLast()
                case "D":
                    stack.append(stack.last! * 2)
                default:
                    return 0
                }
            }
        }
        for i in stack {
            result += i
        }
        return result
    }
}
