import Foundation

class RemoveElement {
    func removeElement(array: [Int], target: Int) -> Int {
        var index: Int = 0
        for i in array {
            if i != target {
                index += 1
            }
        }
        return index
    }
}

let testArr = [1, 2, 3, 2, 4]
RemoveElement.init().removeElement(testArr, target: 2)
