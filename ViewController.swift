//
//  ViewController.swift
//  randomNumber
//
//  Created by Matt Weems on 30/03/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var count = 0
    var stop = false
    @IBOutlet var countLabel: UILabel!
    
    
    func updateTime() {
        count++
        countLabel.text = "\(count)"
        
    }
    
    @IBAction func startButton(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func stopButton(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    
    @IBAction func redoButton(sender: UIBarButtonItem) {
        timer.invalidate()
        count = 0
        countLabel.text = "0"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

