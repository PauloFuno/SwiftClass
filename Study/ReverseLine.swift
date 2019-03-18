//
//  ReverseLine.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-08.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

func reverseLines() {                           //change VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    let contents = try! String(contentsOfFile: "/Users/park/Desktop/Res/SwiftAGDS/SwiftAGDS/File.txt", encoding: .utf8)
    let lines = contents.split(separator: "\n")
    print(lines)
    
    
}
