//
//  Merge Two Sorted List.swift
//  Alghorithms And Structer Data
//
//  Created by Александр Андреев on 23.02.2024.
//

import Foundation

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0;
        self.next = nil;
        
    }
    public init(_ val: Int) {
        self.val = val;
        self.next = nil;
        
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
    }
 }

public class LinkedLists {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil {
            return nil
        }
        
        var l1 = list1
        var l2 = list2
        
        var resulList: ListNode? = ListNode(-1)
        var currentNode = resulList
        
        while l1?.val != nil && l2?.val != nil {
            print(l1?.val, l2?.val)
            if l1!.val >= l2!.val {
                currentNode?.next = l2
                l2 = l2?.next
            } else {
                currentNode?.next = l1
                l1 = l1?.next
            }
            print(currentNode?.val)
            currentNode = currentNode?.next
        }
        if l1?.val == nil {
            currentNode?.next = l2
        } else {
            currentNode?.next = l1
        }
        
        return resulList?.next
    }
    
    public func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        var list = head
        
        var resulList: ListNode? = ListNode()
        var dict: [Int: Int] = [:]
        var currentNode = resulList
        
        while list?.val != nil {
            if dict[list!.val] == nil {
                dict[list!.val] = 1
                currentNode?.next = list
                currentNode = currentNode?.next
            }
            list = list?.next
        }
        
        currentNode?.next = nil
        
        return resulList?.next
    }

}

