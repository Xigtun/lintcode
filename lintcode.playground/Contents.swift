//: Playground - noun: a place where people can play

import UIKit

//: remove duplicates from array
class ScortedSolution {
    func removeDuplicates(origArray: Array<Int>) -> [Int]{

        var finalArray: [Int] = []

        for i in origArray {
            if !finalArray.contains(i) {
                finalArray.append(i)
            }
        }
        return finalArray
    }
    
}

let scortedArray = [1, 2, 2, 2, 2, 4, 5, 6]
ScortedSolution.init().removeDuplicates(scortedArray)
//: Follow up for ”Remove Duplicates”: What if duplicates are allowed at most twice?
class ScortedSolutionV2 {
    func removeDuplicateV2(origArray: Array<Int>) -> [Int] {

        var finalArray: [Int] = []
        for i in origArray {
            var k = 0
            for j in finalArray {
                if j == i {
                    k += 1
                }
            }
            if k <= 1 {
                finalArray.append(i)
            }
        }

        return finalArray
    }

}
let scortedArrayv2 = [1, 2, 2, 2, 2, 4, 5, 6]
ScortedSolutionV2.init().removeDuplicateV2(scortedArrayv2)

/*:
   Search in Rotated Sorted Array
   Suppose a sorted array is rotated at some pivot unknown to you beforehand.
   (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
   You are given a target value to search. If found in the array return its index, otherwise return -1. You may assume no duplicate exists in the array.
 */

class SearchIndexSolution {
    func searchIndex(rotatedArray: Array<Int>, target: Int) -> Int {
        var first = 0
        var last = rotatedArray.count
        while first != last {
            let middle: Int = first + (last - first) / 2
            if rotatedArray[middle] == target {
                return middle
            } else if rotatedArray[first] <= rotatedArray[middle] {
                if rotatedArray[first] <= target && target <= rotatedArray[middle] {
                    last = middle
                } else {
                    first = middle + 1
                }
            } else {
                if rotatedArray[middle] < target && target <= rotatedArray[last - 1] {
                    first = middle + 1
                } else {
                    last = middle
                }
            }
        }
        return -1
    }
}

let rotatedArray = [4, 5, 6, 7, 0, 1, 2]
SearchIndexSolution.init().searchIndex(rotatedArray, target: 1)

/*:
    Follow up for ”Search in Rotated Sorted Array”: What if duplicates are allowed? Would this affect the run-time complexity? How and why?
    Write a function to determine if a given target is in the array.
 */
class SearchIndexV2 {
    func search(array: Array<Int>, target: Int) -> Bool {
        var first = 0, last = array.count
        while first != last {
            let middle = first + (last - first) / 2
            if array[middle] == target {
                return true
            }
            if array[first] < array[middle] {
                if array[first] <= target && target < array[middle] {
                    last = middle
                } else {
                    first = middle + 1
                }
            } else if array[first] > array[middle] {
                if array[middle] < target && target <= array[last - 1] {
                    first = middle + 1
                } else {
                    last = middle
                }
            } else {
                first += 1
            }
        }
        return false
    }
}

let searchArray = [1, 3, 1, 1, 1]
SearchIndexV2.init().search(searchArray, target: 3)


