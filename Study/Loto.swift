//
//  Loto.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-15.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation
var n: Int = 0


var zero:Int = 0
var one:Int = 0
var two:Int = 0
var tree:Int = 0
var four:Int = 0
var five:Int = 0
var six:Int = 0


var numbers = [one, two, tree, four, five, six]

func loto(_ k:Int){
    numbers[n] = 1
    n += 1
    numbers[n] = 2
    while numbers[n] < k , n < numbers.count{
        n += 1
        numbers[n] = numbers[n-2] + numbers [n-1]
    }
    n += 1
    while n < numbers.count - 1{
        let newR = Int.random(in: numbers[0]...numbers[n])
        let newL = Int.random(in: numbers[0]...numbers[n])
        if numbers[n] < 49 {
            numbers[n] = numbers[newR] + numbers[newL]
        }
        n += 1
    }
    print(numbers)
    
    
}
