//: Playground - noun: a place where people can play

import UIKit

//: remove duplicates from array
func removeDuplicates(origArray: Array<Int>) -> [Int]{

    var finalArray: [Int] = []

    for i in origArray {
        if !finalArray.contains(i) {
            finalArray.append(i)
        }
    }
    return finalArray
}

let scortedArray = [1, 2, 2, 2, 2, 4, 5, 6]
removeDuplicates(scortedArray)
//: Follow up for ”Remove Duplicates”: What if duplicates are allowed at most twice?
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

let scortedArrayv2 = [1, 2, 2, 2, 2, 4, 5, 6]
removeDuplicateV2(scortedArrayv2)

//: Search in Rotated Sorted Array

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


let rotatedArray = [4, 5, 6, 7, 0, 1, 2]
searchIndex(rotatedArray, target: 1)

//: Follow up for ”Search in Rotated Sorted Array”: What if duplicates are allowed? Would this affect the run-time complexity? How and why?

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


let searchArray = [1, 3, 1, 1, 1]
search(searchArray, target: 3)

//: Median of Two Sorted Arrays



//: Longest Consecutive Sequence


//: Two Sum
func twoSumSolution(a: [Int], k: Int) -> ((Int, Int))? {
    var dict = [Int: Int]()
    for i in 0 ..< a.count {
        if let newK = dict[a[i]] {
            return (newK, i)
        } else {
            dict[k - a[i]] = i
        }
    }

    return nil
}

let testArray = [1, 3, 4, 2, 8]
let sum = 11
twoSumSolution(testArray, k: sum)

//: 3Sum
func threeSumSolution (array: [Int]) -> [[Int]] {
    var result:[String: [Int]] = [:]
    for i in 0 ..< array.count {
        for j in i ..< array.count {
            let testVal = -(array[i] + array[j])
            if array.contains(testVal) {
                let threeToAppend = [array[i], array[j], testVal].sort { $0 < $1 }
                result["\(threeToAppend)"] = threeToAppend
            }
        }
    }
    return Array(result.values)
}

let test3Sums = [1, 2, -2, 1, -3]
threeSumSolution(test3Sums)

//: 3Sum Closest
func threeSumClosestSolution(array: [Int], target: Int) -> Int {
    let count: Int = array.count
    if count <= 3 {
        return array.reduce(0, combine: +)
    } else {
        var result = 0
        var sum: Int
        var scorted = array.sort{ $0 < $1 }
        result = scorted[0] + scorted[1] + scorted[2]
        for i in 0 ..< count - 2 {
            var j = i + 1
            var k = count - 1
            while j < k {
                sum = scorted[i] + scorted[j] + scorted[k]
                if abs(target - result) > abs(target - sum) {
                    result = sum
                    if result == target {
                        return result
                    }
                }
                k -= 1
                j += 1
            }
        }
        return result
    }
}

threeSumClosestSolution(test3Sums, target: 5)




