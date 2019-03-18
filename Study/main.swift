//
//  main.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-08.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation
print("Your Lucky number:")
var myL = readLine()
var myLI = Int(myL!)
while myLI! < 6 || myLI! > 12{
    print("Your lucky number must be > 6 and < 12\nTry Again!")
    myL = readLine()
    myLI = Int(myL!)
}
loto(myLI!)














