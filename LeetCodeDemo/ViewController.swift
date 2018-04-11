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
        let num = lengthOfLongestSubstring("abcdabbc")
        print("num=\(num)")
        
    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var lastDuplicatePosition = -1
        var index = 0
        var maxLength = 0
        var dict = [Character: Int]()
        for c in s {
            if let lastIndex = dict[c], lastIndex > lastDuplicatePosition {
                lastDuplicatePosition = lastIndex
            }
            maxLength = max(maxLength, index - lastDuplicatePosition)
            dict[c] = index
            index += 1
        }
        return maxLength
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}






