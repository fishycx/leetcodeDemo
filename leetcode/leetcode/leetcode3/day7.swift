//
//  day7.swift
//  leetcode
//
//  Created by fishycx on 2021/6/21.
//  Copyright © 2021 fishycx. All rights reserved.
//

import Foundation

extension Solution {
    func reverse(x:Int)->Int {
        var i = x
        var res = 0
        while i != 0 {
            let tmp = i%10 //每次取末尾数字
            //判断是否大于最大32位整数
            if res>INT32_MAX - 1 || (res == INT32_MAX - 1 && tmp > 7) {
                return 0
            }
            
            //判断是否小于最小32位整数
            if res < -INT32_MAX || (res == -INT32_MAX && tmp < -8){
                return 0
            }
            res = res * 10 + tmp;
            i /= 10;
        }
        return res
    }
}
