//
//  ReverseLinkedList.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 18.03.2024.
//

import Foundation
class ReverseLinkedList {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        var newList = head
        while newList?.next != nil {
            newList = newList?.next
        }
        return head
    }
}
