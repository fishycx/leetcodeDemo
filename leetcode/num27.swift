//
//  num27.swift
//  leetcode
//
//  Created by YuChuanxing on 2024/2/20.
//

import Foundation


class SolutionFor27 {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var slowIndex = 0
        for fastIndex in 0..<nums.count {
            if val != nums[fastIndex] {
                nums[slowIndex] = nums[fastIndex]
                slowIndex += 1
            }
        }
        return slowIndex
    }
}
