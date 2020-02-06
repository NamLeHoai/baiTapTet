//
//  nhapMang.swift
//  btLogic
//
//  Created by Nam Le on 2/6/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation

func nhapMang(){
    print("nhập vào số phần tử : ")
    let n = Int(readLine() ?? "") ?? 0
    var a = [Int](repeating: 0, count: n)
    for i in 0..<n{
        print("nhập phần tử thứ \(i+1)")
        a[i] = Int(readLine() ?? "") ?? 0
    }
    print(a)
}
