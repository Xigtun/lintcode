//: [Previous](@previous)

import Foundation

class BubbleSort {
    func bubbleSort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }

        var sortedArray = array

        for x in 0 ..< sortedArray.count - 1 {
            for y in 0 ..< sortedArray.count - 1 - x {
                if sortedArray[y] > sortedArray[y + 1] {
                    swap(&sortedArray[y], &sortedArray[y + 1])
                }
            }
        }

        return sortedArray
    }
}


let bubble = BubbleSort()

let unsorted = [3, 5, 2, 1, 6, 9, 7, 4]
bubble.bubbleSort(unsorted)