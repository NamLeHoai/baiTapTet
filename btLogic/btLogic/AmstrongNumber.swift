//
//  AmstrongNumber.swift
//  btLogic
//
//  Created by Nam Le on 2/2/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation

func AmstrongNumber(){
    var temp1: Int
    var temp2: Int
    var sum: Decimal = 0
    var tem: Int
    var n = 0
    
    for i in 0..<1000{
//        tính số chữ số
        temp1 = i
        while temp1 != 0 {
            temp1 /= 10
            n+=1
        }
//        tính sum
        temp2 = i
        while temp2 != 0 {
            tem = temp2 % 10
            sum += pow(Decimal(tem), n)
            temp2 /= 10
        }
//        so sánh
        if sum == Decimal(i) {
            print(i)
        }
        n = 0
        sum = 0
        
    }
    
}

//cách khác

func isSoAmstrong(n: Int) -> Bool {
    
    let arr = Array(String(n))
    var numbers = [Float]()
    
    numbers = arr.map { (i: Character) -> (Float) in
        Float(String(i))!
    }
    
    var tongAms: Float = 0
    for i in numbers {
        tongAms += powf(i, Float(numbers.count))
    }
    
    if Float(n) == tongAms {
        return true
    }else{
        return false
    }
}

func lietKeSoAmstrong(){
    for i in 1...1000{
        if isSoAmstrong(n: i){
            print(i, terminator: " ")
        }
    }
}
