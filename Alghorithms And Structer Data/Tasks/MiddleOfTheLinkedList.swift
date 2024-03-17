//
//  MiddleOfTheLinkedList.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 17.03.2024.
//

import Foundation
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class MiddleOfTheLinkedList {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var middleNode = head
        var currentNode = head
        var countItems = 1
        while currentNode != nil {
            if countItems % 2 == 0 {
                middleNode = middleNode?.next
            }
            currentNode = currentNode?.next
            print("current")
            print(currentNode?.val ?? "ok")
            print("middle")
            print(middleNode!.val)
            countItems += 1
        }
        return middleNode
    }
}
