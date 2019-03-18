//
//  Exhaustive Search.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-11.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

func printBinary2(_ digits: Int, _ prefix: String = ""){
//    print("printBinary2(\(digits), \(prefix))")
    if digits == 0 {
        print(prefix)
    } else {
        printBinary2(digits - 1, prefix + "0")
        printBinary2(digits - 1, prefix + "1")
        
    }
    
}
