//
//  TwoSum_1.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/2/23.
//  Copyright © 2018年 Apple. All rights reserved.
//
/*
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */




import UIKit

class TwoSum_1: NSObject {
    
    /// 方法一
    ///
    /// - Parameters:
    ///   - nums: 数组
    ///   - target: 数字
    /// - Returns: 返回结果数组
    func towSum(_ nums:[Int],_ target:Int) -> [Int] {
        
        let count = nums.count
        for i in 0..<nums.count {
            let num = nums[i]
            for j in i+1..<count{
                if num + nums[j] == target{
                    return [i,j]
                }
            }
        }
        return []
    }
    
    /// 方法二
    ///
    /// - Parameters:
    ///   - nums: 数组
    ///   - target: 数字
    /// - Returns: 返回结果数组
    func towSum2(_ nums:[Int],_ target:Int) -> [Int] {
    
        var dict = [Int:Int]()
        for (i,num) in nums.enumerated() {
            if let lastIndex = dict[target - num]{
                return [lastIndex,i]
            }
            dict[num] = i
        }
        return []
    }
    
    
}
