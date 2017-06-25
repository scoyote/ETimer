//
//  InterfaceController.swift
//  ETimer WatchKit Extension
//
//  Created by Samuel Croker on 6/25/17.
//  Copyright © 2017 scoyote. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    // Keep track of the time the workout started.
    var workoutStartTime: Date?

    @IBOutlet var workoutTimer: WKInterfaceTimer!
    
    @IBAction func startWorkout() {
        // To count up use 0.0 or less, otherwise the timer counts down.
        workoutTimer.setDate(Date(timeIntervalSinceNow: 0.0))
        workoutTimer.start()
        self.workoutStartTime = Date()
    }

    @IBAction func stopWorkout() {
        workoutTimer.stop()
    }

        /*
    let seconds:Int64
    
    seconds         = 60
    var timer           = Timer()
    var isTimerRunning  = false
    var resumeTapped    = false
    
    // this is sams code:
    @IBOutlet var timerLabel: WKInterfaceLabel!
    

    @IBAction func startButtonTapped() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: (#selector(InterfaceController.updateTimer)),
            userInfo: nil,
            repeats: true
        )
    }

    @IBAction func pauseButtonTapped() {
        if self.resumeTapped == false {
            timer.invalidate()
            self.resumeTapped = true
        } else {
            runTimer()
            self.resumeTapped = false
        }
    }
    
    @IBAction func resetButtonTapped() {
        timer.invalidate()
        seconds = 60    //Here we manually enter the restarting point for the seconds, but it would be wiser to make this a variable or constant.
        timerLabel.setText("\(seconds)")
    }
 
    func runTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: (#selector(InterfaceController.updateTimer)),
            userInfo: nil,
            repeats: true
        )
    }
 
    func updateTimer() {
        seconds += 1     //This will decrement(count down)the seconds.

        timerLabel.setText("\(seconds)") //This will update the label.
    }
*/
    
}
