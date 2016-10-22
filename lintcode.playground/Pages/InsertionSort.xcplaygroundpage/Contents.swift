//: [Previous](@previous)

import Foundation

func insertSort (_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    var sortedArray = array
    for x in 1 ..< sortedArray.count {
        var y = x
        while y > 0 && sortedArray[y] < sortedArray[y - 1] {
            swap(&sortedArray[y], &sortedArray[y - 1])
            y -= 1
        }
    }
    return sortedArray
}

let unsorted = [3, 5, 2, 1, 6, 9, 7, 4]
insertSort(unsorted)
