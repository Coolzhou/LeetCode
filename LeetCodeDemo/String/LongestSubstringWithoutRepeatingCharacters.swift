//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/3/21.
//  Copyright © 2018年 Apple. All rights reserved.
//  https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
/*
 Given a string, find the length of the longest substring without repeating characters.
 
 Examples:
 
 Given "abcabcbb", the answer is "abc", which the length is 3.
 
 Given "bbbbb", the answer is "b", with the length of 1.
 
 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 
*/
import UIKit

class LongestSubstringWithoutRepeatingCharacters: NSObject {
    
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//        guard s.count != 0 else {
//            return 0
//        }
//        var set = Set<Character>()
//        var maxLen = 0
//        var startIndex = 0
//
//        for i in 0..<s.count {
//            let index = s.index(s.startIndex, offsetBy: i)
//            let current = s[index]
//            print("current = \(current) ")
//
//            if set.contains(current){
//                maxLen = max(maxLen, i-startIndex)
//                while s[s.index(s.startIndex, offsetBy: startIndex)] != current{
//                    set.remove(s[s.index(s.startIndex, offsetBy: startIndex)])
//                    startIndex += 1
//                }
//                startIndex += 1
//            }else{
//                set.insert(current)
//            }
//        }
//        maxLen = max(maxLen, s.count - startIndex)
//        return maxLen
//    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        print("s =\(s)")
        guard s.count != 0 else {
            return 0
        }
        var set = Set<Character>()
        var maxLen = 0
        var startIndex = 0
        
        for i in 0..<s.count {
            let index = s.index(s.startIndex, offsetBy: i)
            let current = s[index]
            
            
            if set.contains(current){
                
                print("current = \(current) - i=\(i) - startIndex=\(startIndex)")
                maxLen = max(maxLen, i-startIndex)
                while s[s.index(s.startIndex, offsetBy: startIndex)] != current{
                    set.remove(s[s.index(s.startIndex, offsetBy: startIndex)])
                    startIndex += 1
                }
                startIndex += 1
            }else{
                set.insert(current)
            }
        }
        maxLen = max(maxLen, s.count - startIndex)
        return maxLen
        
//      abcdbcbb
    }
}
