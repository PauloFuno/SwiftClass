//
//  JustPrint.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-11.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation

func justPrint(form: String, index: inout Int) {
    if index <= form.count - 1 {
        print(form[index], terminator: "")
        index += 1
        justPrint(form: form, index: &index)
    }
}
