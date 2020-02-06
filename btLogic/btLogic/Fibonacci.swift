//
//  Fibonacci.swift
//  btLogic
//
//  Created by Nam Le on 2/3/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation

func Fibonacci(){
    var a0: Int = 0
    var a1: Int = 0
    var a2: Int = 1
    print("nhap vao so n: ")
    let n = Int(readLine()!)!
    print("0 1", terminator: " ")
    while a2 < n {
        a0 = a1
        a1 = a2
        a2 = a0 + a1
        print(a2, terminator: " ")
    }
}
