//: Playground - noun: a place where people can play

import UIKit

// remove duplicates from array

let scortedArray = [1, 2, 2, 2, 2, 4, 5, 6]

func removeDuplicates(origArray: Array<Int>) -> [Int]{

    var finalArray: [Int] = []

    for i in origArray {
        if !finalArray.contains(i) {
            finalArray.append(i)
        }
    }
    return finalArray
}

removeDuplicates(scortedArray)

// Follow up for ”Remove Duplicates”: What if duplicates are allowed at most twice?
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

removeDuplicateV2(scortedArray)


