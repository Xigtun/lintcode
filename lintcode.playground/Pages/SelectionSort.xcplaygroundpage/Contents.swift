
import Foundation

class SelectionSort {
    func selectSort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }
        var sortedArray = array
        for x in 0 ..< sortedArray.count - 1 {
            var min = x
            for y in x + 1 ..< sortedArray.count {
                if sortedArray[y] < sortedArray[x] {
                    min = y
                }
            }
            if x != min {
                swap(&sortedArray[x], &sortedArray[min])
            }
        }

        return sortedArray
    }

}


let selection = SelectionSort()

let unsorted = [3, 5, 2, 1, 6, 9, 7, 4]
selection.selectSort(unsorted)