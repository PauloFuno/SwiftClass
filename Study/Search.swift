//
//  Search.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-12.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

func binarySearch(_ arr: [Int], _ target: Int) -> Int {
    var lower = 0
    var upper = arr.count - 1
    
    while lower <= upper {
        let mid = (upper + lower) / 2
        if arr[mid] < target {
            lower = mid + 1
        } else {
            upper = mid - 1
        }
    }
    return -1
}


