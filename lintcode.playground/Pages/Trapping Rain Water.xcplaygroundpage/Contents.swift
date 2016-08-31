//: Trapping Rain Water

import Foundation

func trapRainWater(nums: Array<Int>) -> Int {
    let n = nums.count
    if n <= 2 {
        return 0
    }
    var left_max = [Int](count: n, repeatedValue: 0)
    var right_max = [Int](count: n, repeatedValue: 0)
    for i in 1 ..< nums.count {
        left_max[i] = max(left_max[i - 1], nums[i - 1])
        right_max[n - 1 - i] = max(right_max[n - i], nums[n - i])
    }
    var sum = 0
    for i in 0 ..< n {
        let height = min(left_max[i], right_max[i])
        if height > nums[i] {
            sum += height - nums[i]
        }
    }

    return sum
}

let test = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]

trapRainWater(test)
