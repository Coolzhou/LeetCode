//
//  ViewController.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/2/23.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let num = lengthOfLongestSubstring("abcabcbb")
        print("num=\(num)")

        
        
    }
    
    
    func lengthOfLongestSubstring(_ s:String) -> Int {
        let n = s.count
        var ans = 0
        for i in 0..<n {
            for j in i+1..<n{
                if allUnique(s, start: i, end: j) == true{
                    ans = max(ans, j-i)
                }
            }
        }
        return ans
    }

    func allUnique(_ s:String,start:Int,end:Int) -> Bool {
        var set = Set<Character>()
        let beginIndex = s.startIndex
        
        print("start = \(start) end =\(end)")
        for i in start..<end {
            let index = s.index(beginIndex, offsetBy: i)
            let char = s[index]
            print("char = \(char)")
            if set.contains(char) == false {
                return false
            }else{
                set.insert(char)
            }
        }
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}






