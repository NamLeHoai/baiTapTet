//
//  insertToArray.swift
//  btLogic
//
//  Created by Nam Le on 2/3/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation

func insertToArray(){
    var arr = [1,2,4,6,10,16]
    print("nhap vao 1 so")
    let n = Int(readLine() ?? "") ?? 0
    for (index, value) in arr.enumerated(){
        if n > value && n < arr[index + 1]{
            arr.insert(n, at: index + 1)
        }
    }
    print(arr)
}
