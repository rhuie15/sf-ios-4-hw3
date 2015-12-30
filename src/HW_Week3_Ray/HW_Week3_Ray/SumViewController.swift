//
//  SumViewController.swift
//  HW_Week3_Ray
//
//  Created by Raymond Huie on 12/29/15.
//  Copyright © 2015 Ray Huie. All rights reserved.
//


import UIKit

class SumViewController: UIViewController {
    
    
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBOutlet weak var inputNumber: UITextField!
    
    var sum:Float = 0
    
    @IBAction func sumCalculator(sender: AnyObject) {
        
        let number = inputNumber.text
       
        if number != "" {
            
            if let addNumber = Float(number!) {
                sum += addNumber
                self.sumLabel.text = "Current sum is \(sum)"
            
            } else {
            
            self.sumLabel.text = "You must enter a numeric value"
            
            }
        
        } else {
            self.sumLabel.text = "You did not enter a value"
        }
        
        inputNumber.text = nil

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


