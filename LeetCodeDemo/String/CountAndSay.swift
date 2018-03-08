//
//  CountAndSay.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/3/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

/*
 
 The count-and-say sequence is the sequence of integers with the first five terms as following:
 
 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 
 读法：
 1 is read off as "one 1" or 11.
 11 is read off as "two 1s" or 21.
 21 is read off as "one 2, then one 1" or 1211.
 
 
 题目解析： 开始第一个数是1，第二个数根据上面读法（把1读成 1个1）得到11，第三个数也更加上面读法（把11读成 2个一）得到21
 第四个数读成（把11读成1个2 1个1）得到1211 第五个数（把1211 读成 1个1 1个2 2个1）得到 111221 往后依次类推
 

 */

import UIKit

class CountAndSay: NSObject {
    
    func countAndSay(_ n:Int) -> String {
        guard n > 0 else {
            return ""
        }
        
        var res = "1"
        var temp: String
        var count: Int
        var chars:[Character] = Array()
        var current: Character = Character.init("")
        
        for _ in 1..<n {
            temp = ""
            count = 1
            
            for i in  1 ..< chars.count {
                
            }
            print("222")
            temp.append(current)
        }
        
        return ""
    }

}
