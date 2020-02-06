//
//  ViewController.swift
//  NSTimer
//
//  Created by Nam Le on 2/3/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit
enum Time{
    case Start
    case Pause
}

class ViewController: UIViewController {

    @IBOutlet weak var StartButton: UIButton!

    @IBOutlet weak var ResetButton: UIButton!
    

    @IBOutlet weak var TimerLabel: UILabel!
    
    var timer: Timer!
    var numberSecond: Int = 0
    var timeType: Time = .Start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
        
    }
    @objc func runLoop(){
        numberSecond += 1
        TimerLabel.text = stringFromNumberSecond(numberSecond)
    }

    func stringFromNumberSecond(_ numberSecond: Int) -> String{
        let gio = numberSecond/3600
        let phut = (numberSecond%3600)/60
        let giay = (numberSecond%3600)%60
        
        return "\(gio < 10 ? "0\(gio)" : "\(gio)"):\(phut < 10 ? "0\(phut)" : "\(phut)"):\(giay < 10 ? "0\(giay)" : "\(giay)")"
    }
    
    
    @IBAction func StartButton(_ sender: Any) {
        if timeType == Time.Start{
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
            StartButton.setTitle("Pause", for: .normal)
            timeType = Time.Pause
        }else{
            StartButton.setTitle("Start", for: .normal)
            timeType = Time.Start
            timer.invalidate()
        }
    }
    @IBAction func ResetButton(_ sender: Any) {
        numberSecond = 0
        TimerLabel.text = stringFromNumberSecond(numberSecond)
        timeType = Time.Start
        timer.invalidate()
    }

}

