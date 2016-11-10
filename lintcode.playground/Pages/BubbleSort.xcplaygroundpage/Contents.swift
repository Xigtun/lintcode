
/**
 比较相邻的元素。如果第一个比第二个大，就交换他们两个。
 对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对。这步做完后，最后的元素会是最大的数。
 针对所有的元素重复以上的步骤，除了最后一个。
 持续每次对越来越少的元素重复上面的步骤，直到没有任何一对数字需要比较。
 */

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
