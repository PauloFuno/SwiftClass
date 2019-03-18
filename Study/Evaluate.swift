//
//  Evaluate.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-11.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

// Not Working

//func evaluateHelper(expr: String, index: Int) -> Int{
//    
//    return 0
//}
//func evaluate(expr: String) -> Int {
//    var index = 0
//    evaluate(expr: expr, index: index)
//}
func isInteger(_ num: String) -> Bool{
    if Int(num) != nil {
        return true
    } else {
        return false
    }
}

func evaluate(expr: String, index: inout Int, res: inout Int){
    if index <= expr.count - 1 {
        if expr[index] == "(" || expr[index] == ")" {
            print("Simble")
            index += 1
            evaluate(expr: expr, index: &index, res: &res)
        } else {
            if expr[index] == "+" {
                print("Plus")
                index += 1
                if Int(expr[index]) != nil {
                    res = res + Int(expr[index])!
                    index += 1
                    evaluate(expr: expr, index: &index, res: &res)
                } else {
                    index += 1
                    evaluate(expr: expr, index: &index, res: &res)
                }
                
            } else if expr[index] == "*" {
                print("Multiplication")
                index += 1
                if Int(expr[index]) != nil {
                    res = res * Int(expr[index])!
                    index += 1
                    evaluate(expr: expr, index: &index, res: &res)
                } else {
                    index += 1
                    evaluate(expr: expr, index: &index, res: &res)
                }
            } else {
                print("Number")
                res = Int(expr[index])!
                index += 1
                evaluate(expr: expr, index: &index, res: &res)

            }
        }
    } else {
        print(res)
    }
    
}
