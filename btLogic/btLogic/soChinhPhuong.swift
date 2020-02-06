//
//  soChinhPhuong.swift
//  btLogic
//
//  Created by Nam Le on 2/6/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation

func soChinhPhuong(){
    let a = [3,4,5,9,8,7]
    for i in a{
        if isSoChinhPhuong(n: Double(i)){
            print(i)
            break
        }
    }
}
func isSoChinhPhuong(n: Double) -> Bool{
    
    let sqr = sqrt(n)
    
    if Decimal(n) == pow(Decimal(Int(sqr)), 2){
        return true
    }else{
        return false
    }
}
