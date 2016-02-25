//
//  ViewController.swift
//  Multipy
//
//  Created by Paul Shore on 6/21/15.
//  Copyright (c) 2015 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    //Added for Stretch #3
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var operationLabel: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func calculateButton(sender: UIButton)
    {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()   

        var firstNumber = Int(textField1.text!)!
        var secondNumber = Int(textField2.text!)!
        var result:Int

        //Added for Stretch #3
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            result = firstNumber + secondNumber
            operationLabel.text = "+"
        case 1:
            result = firstNumber - secondNumber
            operationLabel.text = "-"
        case 2:
            result = firstNumber * secondNumber
            operationLabel.text = "*"
        case 3:
            result = firstNumber / secondNumber
            operationLabel.text = "/"
        default:
            result = 0
        }

        answerLabel.text = "\(result)"
        
        if result == 64
        {
            imageView.image = UIImage(named: "Peach")
            
        }
        else if result % 2 == 0
        {
            imageView.image = UIImage(named: "Lamb")
        }
        else
        {
            imageView.image = UIImage(named: "Look")
        }
    }
    

}
