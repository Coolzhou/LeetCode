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
        let num = matrixReshape([[1,2],[3,4]], 2, 2)
        print("num=\(num)")
        
    }
    
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        
        let n = nums.count
        let m = nums[0].count
        
        if n*m != r*c {
            return nums
        }
        
        var array = Array<Array<Int>>()
        
        for i in 0..<r {
            for j in 0..<c {
                let k = i*c + j
                print("k =\(k) k/n=\(k/n) k%n=\(k%n)")
                array[i][j] = nums[k/n][k%n]
            }
        }
        return array
    }
    
    

    
  

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}






