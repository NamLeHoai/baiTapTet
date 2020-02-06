//
//  countPrime.swift
//  btLogic
//
//  Created by Nam Le on 2/5/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation


func countPrime(){
    let arr: [Int] = [1,2,5,4,3,10,9,13]
    var sum = 0
    for a in arr{
        if isNumberPrime(n: a){
            sum += 1
        }
    }
    print("trong arr co \(sum) so nguyen to")
    
    
}

func isNumberPrime(n: Int) -> Bool{
    if n < 2{
        return false
    }else if n == 2{
        return true
    }
    
    for i in 2..<n{
        if n%i == 0{
            return false
        }
    }
    return true

}
