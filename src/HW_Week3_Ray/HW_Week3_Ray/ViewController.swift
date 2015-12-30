//
//  ViewController.swift
//  HW_Week3_Ray
//
//  Created by Raymond Huie on 12/29/15.
//  Copyright © 2015 Ray Huie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputLabel: UILabel!

    @IBOutlet weak var drinkLabel: UILabel!
    
    @IBOutlet weak var inputName: UITextField!

    @IBOutlet weak var inputAge: UITextField!
    
    
    
    
    
    @IBAction func displayLabel(sender: AnyObject) {
        
   // TODO #1   self.inputLabel.text = "Hello World!"
   
   // TODO #2
        let name = inputName.text
        let age = inputAge.text
    
        if name != "" && age != "" {  // why doesn't "nil" work instead of ""
    
        self.inputLabel.text = "Hello \(name!), you are \(age!) years old!"
            
   /* TODO #3
        let numAge = Int(age!)
            if numAge >= 21 {
                self.drinkLabel.text = "You can drink"
            } else if numAge >= 18 {
                self.drinkLabel.text = "You can vote"
            } else if numAge >= 16 {
                self.drinkLabel.text = "You can drive"
            } else {
                self.drinkLabel.text = "You're too young to do anything"
            }
    */
            
            
   // TODO #4   -- I'm confused by this problem since it's the same logic in #3
        let numAge = Int(age!)
            if numAge >= 21 {
                self.drinkLabel.text = "You can drive, vote, and drink (but not at the same time!)"
            } else if numAge >= 18 {
                self.drinkLabel.text = "You can drive and vote"
            } else if numAge >= 16 {
                self.drinkLabel.text = "You can drive"
            } else {
                self.drinkLabel.text = "You're too young to do anything"
            }
            
        } else {
            
        self.inputLabel.text = "You must enter a name and age"
            
        }
    }
  
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

