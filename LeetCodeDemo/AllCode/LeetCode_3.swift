//
//  LeetCode_3.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/2/23.
//  Copyright © 2018年 Apple. All rights reserved.
//


/*
 
 Given a string, find the length of the longest substring without repeating characters.
 
 Examples:
 
 Given "abcabcbb", the answer is "abc", which the length is 3.
 
 Given "bbbbb", the answer is "b", with the length of 1.
 
 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 
 */

import UIKit

class LeetCode_3: NSObject {
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        guard s.count != 0  else {
            return 0
        }
        
        var set = Set<String>()
        var maxLen = 0
        var startIndex = 0
        
        for i in 0 ..< s.count {
            let char = s.index(s.startIndex, offsetBy: i)
            let current = s[char]
            let currentStr = String(current)
            
            if set.contains(currentStr){
                
                maxLen = max(maxLen, i - startIndex)
                print("maxLen = \(maxLen)")
                
                let startChar = s.index(s.startIndex, offsetBy: startIndex)
                
                
                print("baohan = \(current)  --- startChar = \(s[startChar])")
//                while s[startChar] != current {
////                    let startString = String(s[startChar])
////                    set.remove(startString)
//                    startIndex += 1
//                }
                startIndex += 1
                
            }else{
                print("bubaohan =\(currentStr)")
                set.insert(currentStr)
            }
        }
//        Given "abcabcbb", the answer is "abc", which the length is 3.
        print("startIndex =\(startIndex)")
        maxLen = max(maxLen, s.count - startIndex)
        
        return maxLen
        
//        return 3
        
    }

}
