//
//  ViewController.swift
//  StopWatch
//
//  Created by dilip kumar on 02/08/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flagFirst = true;
    let date =  Date()
    var timer: Timer! = nil
    var second = 3000
      @IBOutlet weak var view2: UIView!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var buttonStart: UIButton!
    @IBOutlet weak var buttonPause: UIButton!
    @IBOutlet weak var buttonStop: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     //   view2.backgroundColor = UIColor.brown
        Label.text = "Stop Watch"
       // Label.textColor = UIColor.red
        
        
        
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonStartAction(_ sender: Any) {
      //  Label.text = "Start"
        
        if timer != nil {
            timer.invalidate()
            timer = nil
        }
        
       timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector:  (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
     }
    
    @IBAction func buttonPauseAction(_ sender: Any) {
       // Label.text = "Pause"
        timer.invalidate()
        
    }
    
 
    @IBAction func buttonStopAction(_ sender: Any) {
       // Label.text = "Stop"
        second = 0
        Label.text = timeString(time: TimeInterval(second))
        second = 3000
        timer.invalidate()
    }
    
    @objc func updateTimer(){
        if second < 1 {
            timer.invalidate()
            second = 3000
        }
        else {
                second -= 1
                Label.text = timeString(time: TimeInterval(second))
            }
        
    }
    
    func timeString(time:TimeInterval) -> String {
    let hours = Int(time) / 360000
    let minutes = Int(time) / 6000
    let seconds = Int(time) / 100 % 60
    let pulse   = Int(time)%100
        return String(format:"%02i:%02i:%02i.%02i", hours, minutes, seconds,pulse)
    }

}

