//
//  sortArray.swift
//  btLogic
//
//  Created by Nam Le on 2/2/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation

func sortArray(){
    var arr: [Int] = [1,4,3,7,2,6]
    arr.sort()
//    duyet mang va thay the phan tu dau voi cuoi bang cach them phan tu dau vao cuoi va xoa phan tu cuoi
    for item in arr{
        arr.insert(item, at: 0)
        arr.removeLast()
    }
    print(arr)
}
