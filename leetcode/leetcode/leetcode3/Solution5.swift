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



extension Solution {
    
    //中心扩散法 循环遍历 整个字符数组,然后比对点位置从头移动到尾 以比对点为中心往两边扩散 直到找到最大回文串
    
    func longestPalindrome(_ s: String) -> String {  // 中心扩散法  我自己的暴力法总超时,不得不借鉴一下不超时的
        if s.count < 2 {
            return s
        }
        var start = 0
        var maxLen = 0
        let length = s.count
        let strAry = Array(s)
                
        for i in 0..<length {
            if length - i <= maxLen / 2 {
                break;
            }
            var left = i, right = i;
            while (right < length - 1) && (strAry[right + 1] == strAry[right]) {
                right += 1
            }
            
            while (right < length - 1) && left >= 1 && (strAry[right + 1] == strAry[left - 1]) {
                right += 1
                left -= 1
            }
            if right - left + 1 > maxLen {
                start = left
                maxLen = right - left + 1
            }
        }
        
        let startIndex = s.index(s.startIndex, offsetBy: start)
        let endIndex = s.index(startIndex, offsetBy: maxLen)
        let range = startIndex ..< endIndex
        return  String(s[range])
    }
}
