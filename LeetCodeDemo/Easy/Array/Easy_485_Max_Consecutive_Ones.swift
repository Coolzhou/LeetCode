//
//  Easy_485_Max_Consecutive_Ones.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/3/23.
//  Copyright © 2018年 Apple. All rights reserved.
//

/*
 https://leetcode.com/problems/max-consecutive-ones/description/
 Given a binary array, find the maximum number of consecutive 1s in this array.
 
 Example 1:
 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
 The maximum number of consecutive 1s is 3.
 Note:
 
 The input array will only contain 0 and 1.
 The length of input array is a positive integer and will not exceed 10,000
 
 */


import UIKit

class Easy_485_Max_Consecutive_Ones: NSObject {
    
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var res = 0
        var sum = 0
        for i in 0..<nums.count {
            let num = nums[i]
            sum = (sum + num) * num
            res = max(sum,res)
            
            // sum = (num == 0) ? 0 : sum+1
            // res = max(sum,res)
        }
        return res
    }
}
