//: Rotate Image

import Foundation

func rotateImage(nums: Array<Array<Int>>) {
    var result = nums
    let n = result.count
    for i in 0 ..< n {
        print(i)
        for j in 0 ..< n - 1 {
            swap(&result[i][j], &result[n - 1 - j][n - 1 - i])
        }
    }
}

var test = [[Int]]()
var first = [1, 2]
var third = [3, 4]
test.append(first)
test.append(third)

rotateImage(test)


