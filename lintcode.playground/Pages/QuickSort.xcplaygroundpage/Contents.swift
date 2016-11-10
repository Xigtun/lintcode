
/**
 从数列中挑出一个元素，称为 "基准"（pivot），
 重新排序数列，所有元素比基准值小的摆放在基准前面，所有元素比基准值大的摆在基准的后面（相同的数可以到任一边）。在这个分区结束之后，该基准就处于数列的中间位置。这个称为分区（partition）操作。
 递归地（recursive）把小于基准值元素的子数列和大于基准值元素的子数列排序。
 */

import Foundation

func quickSort(_ a: [Int]) -> [Int] {
    guard a.count > 1 else {
        return a
    }
    
    /// 取中间数
    let middle = a[a.count / 2]
    /// 选出左边小的
    let less = a.filter { $0 < middle }
    
    let equal = a.filter { $0 == middle }
    
    /// 选出右边大的
    let greater = a.filter{ $0 > middle }
    
    return quickSort(less) + equal + quickSort(greater)
}

let list = [ 7, 0, 3, 9, 2, 14, 9, 27, 1, 5, 8, -1, 26 ]
quickSort(list)