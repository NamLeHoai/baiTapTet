
//  draw1.swift
//  btLogic
//
//  Created by Nam Le on 2/2/20.
//  Copyright © 2020 Nam Le. All rights reserved.

//*
//**
//***
//****
//*****
//*****
//****
//***
//**
//*
import Foundation
func draw1(){
    print("nhập vào chiều cao hình: ")
    let h = Int(readLine()!)!

    for i in 0..<h{
        if i < h/2{
            for _ in 0...i{
                print("*", terminator: "")
            }
            print()
        }
        if i > h/2 {
            for _ in i...h{
                print("*", terminator: "")
            }
            print()
        }

    }
}
//    *
//   ***
//  *****
//********
// ******
//  ****
//   **
//    *
func draw2(){
    print("nhap vao chieu cao hinh : ")
    let h = Int(readLine() ?? "") ?? 0
    
//    gọi lại hàm đến khi nhập só lẻ
    if h%2 == 0 || h<3 {
        draw2()
        return
    }
    
    let n = h/2 + 1
    var range = 0
    
    for i in 1...h{
        for j in 1...h{
            if j >= n - range && j <= n + range{
                print("*", terminator: "")
            }else {
                print(" ", terminator: "")
            }
        }
        
        if i >= n{
            range -= 1
        }else{
            range += 1
        }
        print()
    }
    
}
