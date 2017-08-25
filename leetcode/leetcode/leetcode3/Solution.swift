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
        
        for item in s.characters {
            let startPlace = s.index(of: item)
            let subString = s[startPlace!..<s.endIndex]
            temp = self.tempReuslt(s: String.init(subString))
            result = temp.characters.count > result.characters.count ? temp : result
        }
        return result.characters.count
    }
    
    func tempReuslt(s:String) -> String {
        var result : String = ""
        for i in s.characters {
            if(result.contains(i)) {
                break
            }
            result.characters.append(i)
        }
        return result
    }
    
}
