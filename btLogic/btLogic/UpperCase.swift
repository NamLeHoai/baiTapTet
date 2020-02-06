//
//  UpperCase.swift
//  btLogic
//
//  Created by Nam Le on 2/6/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation

func upperCase(){
    print("nhập vào chuỗi: ")
    let chuoi = readLine()!
    var word = chuoi.components(separatedBy: " ")
    for i in word{
        let a = i.prefix(1).uppercased()
        var b = [Character](i)
        b.removeFirst()
        b.insert(Character(a), at: 0)
        let c = String(b)
        print(c, terminator: " ")

    }

    



}
