//
//  main.swift
//  Study
//
//  Created by Paulo Schmidt on 2019-03-08.
//  Copyright © 2019 Paulo Schmidt. All rights reserved.
//

import Foundation
// not mine
//https://github.com/iamjason/eight-queens/blob/master/8Queens/main.swift
//studing to understand the code 

//class Queen {
//    var column:Int
//    var row:Int
//
//    init(forRow:Int){
//        row  = forRow
//        column = 0
//    }
//
//}
//
//
//// global variables
//var solutionsFound = 0
//var positionsChecked = 0
//let printSolutions = true
//let boardWidth = 7
//
//// create 8 queen objects, initialized to rows 0 - 7
//let queens:[Queen] = (0...boardWidth).map{ Queen(forRow: $0) }
//
//
//func isSafe(currentRow:Int, currentColumn:Int) -> Bool {
//    positionsChecked += 1
//
//    for previousRow in 0 ..< currentRow {
//
//        // check vertical
//        if queens[previousRow].column == currentColumn {
//            return false
//        }
//
//        // check diagonal
//        let dRow = currentRow - previousRow
//        let dCol = currentColumn - queens[previousRow].column
//        if dRow == dCol || dRow == -dCol {
//            return false
//        }
//
//    }
//
//    // if we've gotten to this point it's a safe spot on the board
//    queens[currentRow].column = currentColumn
//    return true
//
//}
//
//
///**
// */
//func moveQueenAcrossRow(row:Int) {
//
//    for column in 0...boardWidth {
//
//        // Move queen column by column, checking if it's in a safe place
//        if isSafe( currentRow: row, currentColumn: column) {
//
//            // if we've found the 8th queen, that's an ANSWER!
//            if row == boardWidth {
//                solutionsFound += 1
//                if printSolutions {
//                    printBoard()
//                }
//            } else {
//
//                // recursive call to move the queen to the next row
//                moveQueenAcrossRow(row: row+1)
//            }
//        }
//    }
//
//}
//
//func printBoard() {
//
//    print("Solution #: \(solutionsFound)\n")
//
//    // top down
//    for currentRow in Array((0...boardWidth).reversed()) {
//        print("\(currentRow+1)", terminator: "")
//        // left to right
//        for currentColumn in 0...boardWidth {
//            if queens[currentRow].column == currentColumn {
//                print(" Q ", terminator: "")
//            } else {
//                print(" - ", terminator: "")
//            }
//        }
//        print("")
//    }
//
//    print("  A  B  C  D  E  F  G  H \n\n")
//
//
//
//}

moveQueenAcrossRow(row: 0)
print("Solutions Found: \(solutionsFound)\nPositions checked: \(positionsChecked)", terminator: "")











