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
        let num = findMaxConsecutiveOnes([0,1,0,1,1])
        print("num=\(num)")
        
    }
    
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
//        var set:Set = Set<Int>()
        
        guard nums.count > 0 else {
            return 0
        }

        if nums.count == 1 && nums[0] == 1 {
            return 1
        }
        
        var startIndex = 0
        var maxLen = 0
        for i in 0..<nums.count-1 {
            
            if nums[i] == 1{
                
                if nums[i] != nums[i+1]{
                    maxLen = max(maxLen, startIndex)
                }else{
                    maxLen = startIndex
                    startIndex = 0
                }
                startIndex += 1
            }
            print("maxLen =\(maxLen) - startIndex =\(startIndex) - i=\(i)")
        }
        
        maxLen = max(maxLen, startIndex)
        return maxLen
    }

    
  

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}






