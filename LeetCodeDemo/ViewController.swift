//
//  ViewController.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/2/23.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabeView: UITableView!
    
    var dataArray = Array<String>.init(arrayLiteral: "01_wo Sum","03_Longest Substring Without Repeating Characters")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        self.tabeView.register(LeetCodeCell.self, forCellReuseIdentifier: "LeetCode")
        self.tabeView.delegate = self
        self.tabeView.dataSource = self
        self.tabeView.tableFooterView = UIView.init()

    }
    
    func runLeetCode(_ index:Int) {
        
        switch index {
        case 0:
                let twoSum = TwoSum_1.init()
                let nums = twoSum.towSum2([2,7,11,15], 9)
                print("nums = \(nums)")
            
        case 1:
                let leetCode_3 = LeetCode_3.init()
                let nums = leetCode_3.lengthOfLongestSubstring("pwwkew")
                print("nums = \(nums)")
            
        default:
            print("nil")
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeetCode") as! LeetCodeCell
        let titleString = self.dataArray[indexPath.row]
        cell.textLabel?.text = titleString
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        runLeetCode(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}



