//
//  AddStrings.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/3/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

/*
 https://leetcode.com/problems/add-strings/description/
 Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.
 
 Note:
 
 The length of both num1 and num2 is < 5100.
 Both num1 and num2 contains only digits 0-9.
 Both num1 and num2 does not contain any leading zero.
 You must not use any built-in BigInteger library or convert the inputs to integer directly.
 
 给定两个非负整数num1和num2表示为字符串，返回num1和num2的总和。
 注：
 两num1和num2长度＜5100。
 
 两num1和num2只包含数字0-9。
 
 两num1和num2不包含任何前导零。
 
 你不能使用任何内置BigInteger图书馆或转换输入整数直接。
 
*/

import UIKit

class AddStrings: NSObject {
    
    func addStrings(_ num1:String, _ num2:String) -> String {
        
        let num1chars = Array(num1.reversed())
        let num2chars = Array(num2.reversed())
        
        print("num1chars = \(num1chars) - num2chars =\(num2chars)")
        
        var i=0,j=0,sum = 0,carry = 0
        var res = ""
        while i<num1chars.count || j<num2chars.count || carry != 0 {
            sum = carry
            
            if i < num1chars.count {
                sum += Int(String(num1chars[i]))!
                i += 1
            }
            
            print("sum1 = \(sum)")
            
            
            if j < num2chars.count {
                sum += Int(String(num2chars[j]))!
                j += 1
            }
            
            print("sum2 = \(sum)")
            
            carry = sum / 10
            sum = sum % 10
            
            res.append(String(sum))
        }
        
        return String(res.reversed())
        
    }

}
