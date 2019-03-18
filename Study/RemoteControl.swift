//
//  RemoteControl.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-15.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

//choose channel ch
//see if ch contains any broken buttons
//if there are no broken buttons -> get | ch -N | and get the number of +, - button presses

func RemoteControl(_ ch: Int, _ broken: [Int]) {
    var numb: Int = 0
    var pom: Int = 0
    while numb <= broken.count - 1{
        if ch == broken[numb] {
            print ("broken")
        } else {
            if pom < ch{
                while pom < ch{
                    pom += 1
                    print("\(pom) number of +")
                }
                numb += 1
            } else {
                while pom > ch {
                    pom += 1
                    print("\(pom) number of -")
                }
            }

        }
    }
}
