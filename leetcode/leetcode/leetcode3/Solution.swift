//
//  Solution.swift
//  leetcode
//
//  Created by 余传兴 on 2017/8/25.
//  Copyright © 2017年 fishycx. All rights reserved.
//

import UIKit

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var result:String = ""
        var temp:String = ""
        
        for item in s {
            let startPlace = s.index(of: item)
            let subString = s[startPlace!..<s.endIndex]
            temp = self.tempReuslt(s: String.init(subString))
            result = temp.count > result.count ? temp : result
        }
        return result.count
    }
    
    func tempReuslt(s:String) -> String {
        var result : String = ""
        for i in s {
            if(result.contains(i)) {
                break
            }
            result.append(i)
        }
        return result
    }
    
}


//滑动窗口
class Solution1 {
    class LongestSubstringWithoutRepeatingCharacters {
        func lengthOfLongestSubstring(_ s: String) -> Int {
            var longest = 0, left = 0, set = Set<Character>()
            let sChars = Array(s)
            
            for (i, char) in sChars.enumerated() {
                if set.contains(char) {
                    
                    //计算最大长度
                    longest = max(longest, i - left)
                    
                    //把重复字符以及它左边的都移出窗口
                    while sChars[left] != char {
                        set.remove(sChars[left])
                        left += 1
                    }
                    left += 1
                    
                } else {
                    set.insert(char)
                }
            }
            
            return max(longest, sChars.count - left)
        }
    }
}



