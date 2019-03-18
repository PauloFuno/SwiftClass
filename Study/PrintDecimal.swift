//
//  PrintDecimal.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-11.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

func printDecimal(_ digit: Int, _ prefix: String = ""){
    if digit == 0 {
        print(prefix)
    } else {
        for i in 0..<10 {
            printDecimal(digit - 1, prefix + String(i))
        }
    }
}
