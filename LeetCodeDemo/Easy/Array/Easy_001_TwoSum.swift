//
//  Easy_001_TwoSum.swift
//  LeetCodeDemo
//
//  Created by zhou on 2018/4/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class Easy_001_TwoSum: NSObject {
    
    func twoSum(_ nums:[Int],_ target:Int) -> [Int] {
        if nums.count < 0 {
            return []
        }
        var dic = [Int:Int]()
        
        for i in 0..<nums.count {
            if let num = dic[target - nums[i]] {
                return [num,i]
            }else{
                dic[nums[i]] = i
            }
        }
        return []
    }

}
