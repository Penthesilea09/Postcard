//
//  ViewController.swift
//  Postcard
//
//  Created by Penthesilea on 26.09.14.
//  Copyright (c) 2014 Penthesilea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SendMailButtonPressed(sender: UIButton) {
        
        // sender: UIButton means that the Button is the sender of this function
        // --> to change its look we just reference to the sender
        sender.backgroundColor = UIColor.greenColor()
        
        // show our till now hiiden Label
        // we set the value on the left of the equation --> messageLabel.hidden
        // we only change the poperty hidden (not the Label itself)
        // we get the value of the right side the equation --> false
        // hidden --> is a BOOL --> til now it is true 
        // we set it now set it to false --> means unhide the Label
        messageLabel.hidden = false
       
        
        // setting on the left side and getting on the right side !!!!
        
        // the text from the TextField will be shown in the Label
        messageLabel.text = enterMessageTextField.text
        
        // the text color from the Label will be shown as red
        messageLabel.textColor = UIColor.redColor()
        
        
        // clean up the TextField afte pressing the Button
        enterMessageTextField.text = ""
        
        //dismiss the keyboard --> use a function  --> resignFirstResponder()
        // () shows it's a function  --> without parameters
        enterMessageTextField.resignFirstResponder()
        
        // update the Button's text every tiome we tapp the Button with the function setTitle 
        // --> the function will update the property title for us
        // -->  setTitle ecxept two parameters  a String and a Control State 
        // we set the default ControlState Normal
        mailButton.setTitle("Mail SEnt", forState: UIControlState.Normal)
        
 
        
       
        
        
        
        
        
        
    }

}

