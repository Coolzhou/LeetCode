//
//  LeetCode_04.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/2/24.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

/*
 
 There are two sorted arrays nums1 and nums2 of size m and n respectively.
 
 Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
 
 Example 1:
 nums1 = [1, 3]
 nums2 = [2]
 
 The median is 2.0
 Example 2:
 nums1 = [1, 2]
 nums2 = [3, 4]
 
 The median is (2 + 3)/2 = 2.5
 
 */

class LeetCode_04: NSObject {
 
    
    //这个解法不符合题目要求（O(log (m+n)），虽然结果没问题，先这样，下次改
    func findMedianSortedArrays(_ nums1:[Int],_ nums2:[Int]) -> Double {
        
        let nums3 = (nums1 + nums2).sorted()
        if nums3.count % 2 == 0 {
            let num1:Double =  Double(nums3[(nums3.count/2)] + nums3[(nums3.count/2 - 1)])/2
            return num1
        }else{
            let num1:Double =  Double(nums3[(nums3.count - 1)/2])
            return num1
        }
    }
}
