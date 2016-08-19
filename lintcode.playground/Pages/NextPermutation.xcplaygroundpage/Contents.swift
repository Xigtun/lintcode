/**
 Implement next permutation, which rearranges numbers into the lexicographically next greater permu- tation of numbers.
 If such arrangement is not possible, it must rearrange it as the lowest possible order (ie, sorted in ascend- ing order).
 The replacement must be in-place, do not allocate extra memory.
 Here are some examples. Inputs are in the left-hand column and its corresponding outputs are in the right-hand column.
 */


import Foundation

class NextPermutation {
    private func reverseInPlace(inout nums: [Int], start: Int, end: Int) {
        if start > end {
            return
        }
        for i in start ..< (start + end) / 2 {
            swap(&nums[i], &nums[start + end - i])
        }
    }

    func nextPermutation(inout nums: [Int]) {
        let length: Int = nums.count
        if length < 2 {
            return
        }
        var index: Int = length - 1
        while index > 0 {
            if nums[index - 1] < nums[index] {
                break
            }
            index -= 1
        }
        if index == 0 {
            reverseInPlace(&nums, start: 0, end: length - 1)
        } else {
            let value: Int = nums[index - 1]
            var i: Int = length - 1
            while i >= index {
                if nums[i] > value {
                    break
                }
                i -= 1
            }
            swap(&nums[i], &nums[index - 1])
            reverseInPlace(&nums, start: index, end: length - 1)
        }
    }
}

var array = [1, 1, 5]
NextPermutation.init().nextPermutation(&array)
