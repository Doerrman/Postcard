//
//  ViewController.swift
//  Postcard
//
//  Created by Kevin Doerr on 4/23/15.
//  Copyright (c) 2015 Kevin Doerr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var senderName: UILabel!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
   //Users/Kevin/Desktop/Postcard/Postcard/Base.lproj/Main.storyboard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
       messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        senderName.hidden = false
        senderName.text = senderName.text
        senderName.textColor = UIColor.blueColor()

        //Adding some comments on Git actions
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

