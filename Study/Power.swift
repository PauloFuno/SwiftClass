//
//  Power.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-08.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

func power(_ base: Int,_ exponent: Int) -> Int {
    if exponent == 0 {
        return 1
    }
    return power(base, exponent - 1) * base
    
}


