//
//  IsPalindrome.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-08.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

/// Write a function solveQueens that accepts a Board as a parameter
/// and tries to place 8 queens on it safely.
///
/// - Your method should stop exploring if it finds a solution
/// - You are allowed to change the function header (args or return type)
/// - Your total recursive calls should not exceed 120 times.

//var count = 0
func solveQueens(_ a:[Int],_ b:[Int],_ c:[Int],_ d:[Int],_ e:[Int],_ f:[Int],_ g:[Int],_ h:[Int],_ num: Int) {
    var num = num
    var no:Int = 0
    var av = a
    var bv = b
    var cv = c
    var dv = d
    var ev = e
    var fv = f
    var gv = g
    var hv = h
    var arr: [[Int]] = [av,bv,cv,dv,ev,fv,gv,hv]
    print("\n\(a)\n\(b)\n\(c)\n\(d)\n\(e)\n\(f)\n\(g)\n\(h)")
    if arr[num][num] == 0 && num <= 8{
        arr[num][num] = 2
        while no < 8 {
            if arr[num][no] == 0 {
                arr[num][no] = 1
            } else {
                no += 1
            }
        }
        num += 1
        
        solveQueens(av, bv, cv, dv, ev, fv, gv, hv, num)
    } else {
        num += 1
        solveQueens(av, bv, cv, dv, ev, fv, gv, hv, num)
    }
    print("\n\(av)\n\(bv)\n\(cv)\n\(dv)\n\(ev)\n\(fv)\n\(gv)\n\(hv)")
    print(arr)

}

