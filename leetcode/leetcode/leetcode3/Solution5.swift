//
//  Solution5.swift
//  leetcode
//
//  Created by fishycx on 2021/2/4.
//  Copyright © 2021 fishycx. All rights reserved.
//

import UIKit

/**
 给你一个字符串 s，找到 s 中最长的回文子串。

 示例 1：

 输入：s = "babad"
 输出："bab"
 解释："aba" 同样是符合题意的答案。
 示例 2：

 输入：s = "cbbd"
 输出："bb"
 示例 3：

 输入：s = "a"
 输出："a"
 示例 4：

 输入：s = "ac"
 输出："a"
 */
class Solution5{
    func longestPalindrome(_ s: String) -> String {
        var result = s.prefix(1)
        var len = s.count
        if len < 2 {
            return s
        }
        
    }
}
