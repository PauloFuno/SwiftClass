//
//  Sortings.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-12.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

// 1. Bubble Sort O(n^2)
// - too many swaps
// - bubble up the largest one to the right
func bubbleSort(_ arr:[Int]) -> [Int] {
    var arr = arr
    for i in 0..<arr.count {
        // i: start index of the scan
        var swaps = 0
        for j in 0..<(arr.count-i-1) {
            if arr[j] > arr[j+1] {
                // swap
                arr.swapAt(j, j+1)
                swaps += 1
            }
        }
        if swaps == 0 { break }
    }
    return arr
}

// 2. Selection Sort O(n^2)
// - each scan select min and put it the left
// - swap
func selectionSort(_ arr:[Int]) -> [Int] {
    var arr = arr
    // i: start index of the scan
    for i in 0..<arr.count {
        var min = i
        // find the min from i+1 to last index
        for j in (i+1)..<arr.count {
            if arr[j] < arr[min] {
                min = j
            }
        }
        // swap
        arr.swapAt(i, min)
    }
    return arr
}


// 3. Insertion Sort O(n^2)
// - sorted | unsorted
// - inserting elem from unsorted portion into sorted portion
// - shift
func insertionSort(_ arr:[Int]) -> [Int] {
    var arr = arr
    // i: the index of the element to insert
    for i in 1..<arr.count {
        let toInsert = arr[i]
        var j = i - 1
        while j >= 0 {
            if toInsert < arr[j] {
                arr[j+1] = arr[j] // shift
            } else {
                break
            }
            j -= 1
        }
        arr[j+1] = toInsert
    }
    return arr
}

// 4. Merge Sort O(n log n)
// Space-Complexity O(n)
//
// mergeSort (divide)
func mergeSort(_ arr:[Int]) -> [Int] {
    if arr.count <= 1 {
        return arr
    }
    let mid = arr.count / 2
    let left = mergeSort(Array(arr[..<mid]))
    let right = mergeSort(Array(arr[mid...]))
    
    return merge(left, right)
}
// merge     (conquer)
func merge(_ left:[Int], _ right:[Int]) -> [Int] {
    var i = 0, j = 0
    var merged:[Int] = []
    while i < left.count && j < right.count {
        if left[i] < right[j] {
            merged.append(left[i])
            i += 1
        } else {
            merged.append(right[j])
            j += 1
        }
    }
    if i == left.count { // leftover from right
        merged += right[j...]
    } else { // leftover from left
        merged += left[i...]
    }
    return merged
}




func quickSort(_ arr: [Int], low: Int, high: Int){
    if low < high {
        let pivot_1 = partition(arr, low: low, high: high)
        quickSort(arr, low: low, high: pivot_1 - 1)
        quickSort(arr, low: pivot_1 + 1, high: high)
    }
}

func partition(_ arr: [Int], low: Int, high: Int ) -> Int{
    var arr = arr
    let pivot = arr[high-1]
    var i = (low - 1)
    var j = low
    while j <= high {
        if arr[j] < pivot {
            i += 1
            arr.swapAt(arr[i], arr[j])
        }
        j += 1
    }
    arr.swapAt(arr[i+1], arr[high])
    return i+1
    
}


