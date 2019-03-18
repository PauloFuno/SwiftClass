//
//  IsPalindrome.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-08.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

func isPalindrome(_ word: String) -> Bool {
    if word.count <= 1 {
        return true
    }
    if let first = word.first,let last = word.last,first == last {
        let nextStart = word.index(word.startIndex, offsetBy: -1)
        let nextEnd = word.index(word.endIndex, offsetBy: -1)
        return isPalindrome(String(word[nextStart..<nextEnd]))
    }
    return false
}
