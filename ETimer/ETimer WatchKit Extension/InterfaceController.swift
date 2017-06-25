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
    @IBOutlet var label: WKInterfaceLabel!
    @IBAction func buttonTapped() {
        label.setText("Hi Hello Hi")
    }
    
}
