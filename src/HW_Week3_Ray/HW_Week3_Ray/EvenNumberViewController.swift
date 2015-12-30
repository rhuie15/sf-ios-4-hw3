//
//  EvenNumberViewController.swift
//  HW_Week3_Ray
//
//  Created by Raymond Huie on 12/29/15.
//  Copyright © 2015 Ray Huie. All rights reserved.
//


import UIKit

class EvenNumberViewController: UIViewController {
    
        
    @IBOutlet weak var evenNumberLabel: UILabel!
    

    @IBOutlet weak var inputNumber: UITextField!
    
    @IBAction func isEvenButton(sender: AnyObject) {
        
        let number = inputNumber.text
        
        if number != "" {
            
            if let numberInput = Int(number!) {
                if numberInput % 2 == 0 {
                
                self.evenNumberLabel.text = "\(numberInput) is an even number"
     
                } else {
                
                self.evenNumberLabel.text = "\(numberInput) is an odd number"
                
                }
            
            } else {
            self.evenNumberLabel.text = "You did not enter an integer"
                
            }
        } else {
                self.evenNumberLabel.text = "You did not enter a value"
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


