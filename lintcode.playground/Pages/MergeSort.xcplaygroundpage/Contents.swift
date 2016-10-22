//: [Previous](@previous)

import Foundation

func mergeSort(_ array: [Int]) -> [Int]{
    guard array.count > 1 else {
        return array
    }

    let mid = array.count / 2
    let left = mergeSort(Array(array[0 ..< mid]))
    let right = mergeSort(Array(array[mid ..< array.count]))
    return merge(left, right: right)
}

func merge(_ left: [Int], right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0

    var sortedArray: [Int] = []
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            sortedArray.append(left[leftIndex])
            leftIndex += 1
        } else if left[leftIndex] > right[rightIndex] {
            sortedArray.append(right[rightIndex])
            rightIndex += 1
        } else {
            sortedArray.append(left[leftIndex])
            leftIndex += 1
            sortedArray.append(right[rightIndex])
            rightIndex += 1
        }
    }

    while leftIndex < left.count {
        sortedArray.append(left[leftIndex])
        leftIndex += 1
    }

    while rightIndex < right.count {
        sortedArray.append(right[rightIndex])
        rightIndex += 1
    }

    return sortedArray
}

let unsorted = [3, 5, 2, 1, 6, 9, 7, 4]
mergeSort(unsorted)
