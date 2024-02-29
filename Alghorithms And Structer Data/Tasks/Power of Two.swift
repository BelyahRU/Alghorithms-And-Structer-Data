//
//  Power of Two.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 29.02.2024.
//

import Foundation

class PowerOfTwo {
    func isPowerOfTwo(_ n: Int) -> Bool {
        let binaryString = String(n, radix: 2)
        print(binaryString)
        return binaryString.filter { $0 == "1" }.count == 1
    }
}
