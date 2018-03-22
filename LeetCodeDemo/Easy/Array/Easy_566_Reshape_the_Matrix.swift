//
//  Easy_566_Reshape_the_Matrix.swift
//  LeetCodeDemo
//
//  Created by Apple on 2018/3/22.
//  Copyright © 2018年 Apple. All rights reserved.
//

/*
 https://leetcode.com/problems/reshape-the-matrix/description/
 
 In MATLAB, there is a very useful function called 'reshape', which can reshape a matrix into a new one with different size but keep its original data.
 
 You're given a matrix represented by a two-dimensional array, and two positive integers r and c representing the row number and column number of the wanted reshaped matrix, respectively.
 
 The reshaped matrix need to be filled with all the elements of the original matrix in the same row-traversing order as they were.
 
 If the 'reshape' operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.
 
 Example 1:
 Input:
 
 nums =
 [[1,2],
 [3,4]]
 
 r = 1, c = 4
 
 Output:
 [[1,2,3,4]]
 
 Explanation:
 The row-traversing of nums is [1,2,3,4]. The new reshaped matrix is a 1 * 4 matrix, fill it row by row by using the previous list.
 
 Example 2:
 Input:
 
 nums =
 [[1,2],
 [3,4]]
 r = 2, c = 4
 
 Output:
 [[1,2],
 [3,4]]
 
 Explanation:
 There is no way to reshape a 2 * 2 matrix to a 2 * 4 matrix. So output the original matrix.
 Note:
 The height and width of the given matrix is in range [1, 100].
 The given r and c are all positive.
 
 
*/

import UIKit

class Easy_566_Reshape_the_Matrix: NSObject {
    
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        
        var array = Array<Int>()
        let n = nums.count
        let m = nums[0].count
        for i in 0..<n {
            for j in 0..<m{
                array.append(nums[i][j])
            }
        }
        var countArray = Array<Array<Int>>()
        if (array.count % r == 0) && (array.count / c  >= 1) && (array.count == r*c)  {
            for i in 0..<r{
                var numsArray = Array<Int>()
                for j in 0..<c{
                    numsArray.append(array[j+i*c])
                }
                countArray.append(numsArray)
            }
            return countArray
        }else{
            return nums
        }
    }
}
