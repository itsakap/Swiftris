//
//  ZShape.swift
//  Swiftris
//
//  Created by Adam Kaplan on 1/24/15.
//  Copyright (c) 2015 Adam Kaplan. All rights reserved.
//

class ZShape:Shape {
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero:       [ (1, 0), (1, 1), (0, 1), (0,2) ],
            Orientation.Ninety:     [ (-1,0), (0, 0), (0, 1), (1,1) ],
            Orientation.OneEighty:  [ (1, 0), (1, 1), (0, 1), (0,2) ],
            Orientation.TwoSeventy: [ (-1,0), (0, 0), (0, 1), (1,1) ]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx],blocks[ThirdBlockIdx],blocks[FourthBlockIdx]]
        ]
    }
}