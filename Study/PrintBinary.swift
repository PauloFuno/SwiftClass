//
//  PrintBinary.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-08.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

func printBinary(_ num: Int) {
//    let bi = String(num, radix: 2)
//    print(bi)
    if num < 0 {
        print("-", terminator: "")
        printBinary(-num)
        return
    }
    if num < 2 {
        print(num, terminator:"")
        return
    }
    printBinary(num/2)
    print(num % 2, terminator:"")
}


