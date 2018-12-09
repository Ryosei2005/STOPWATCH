//
//  ViewController.swift
//  STOPWATCH
//
//  Created by Ryosei Tanaka on 2018/11/25.
//  Copyright © 2018 Ryosei Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.00
    
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func up(){
        count = count + 0.01
        label.text = String(format:"%.2f",count)
    }
    
    @IBAction func reset(){
        if timer.isValid{
            timer.invalidate()
        }
        count = 0.00
        
        label.text = String(format: "%.2f",count)
    }
    @IBAction func start(){
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target:self,
                                         selector: #selector(self.up),
                                         userInfo: nil,
                                         repeats:true)
        }
    }
    
    @IBAction func stop(){
        if timer.isValid {
            timer.invalidate()
            
        }
        
    }
}
