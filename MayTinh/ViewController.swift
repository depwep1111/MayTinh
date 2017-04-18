//
//  ViewController.swift
//  MayTinh
//
//  Created by Duy Bùi on 4/19/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    @IBOutlet weak var label: UILabel!
    var isNumber = true
    var preNumber: Double = 0
    var Opera = 0;

    @IBAction func numbers(_ sender: UIButton) {
        if isNumber == false
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            isNumber = true
            
        }
        else{
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
    }
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            preNumber = Double(label.text!)!
            if sender.tag == 12 // dau nhan
            {
                label.text = "X"
            }
            else if sender.tag == 13 // dau chia
            {
                label.text = "/"
            }
            else if sender.tag == 14 // dau tru
            {
                label.text = "-"
            }
            else  if sender.tag == 15 // dau cong
            {
                label.text = "+"
            }
            isNumber = false
            Opera = sender.tag
        }
        else if sender.tag == 16
        {
            if Opera == 12 //tinh nhan
            {
                label.text = String(preNumber * numberOnScreen)
            }
            else if Opera == 13 // tinh chia
            {
                label.text = String(preNumber / numberOnScreen)
            }
            else if Opera == 14 // tinh tru
            {
                label.text = String(preNumber - numberOnScreen)
            }
            else if Opera == 15 // tinh cong
            {
                label.text = String(preNumber + numberOnScreen)
            }
        }
        
        else if sender.tag == 11
        {
            label.text = ""
            preNumber = 0
            numberOnScreen = 0
            Opera = 0
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

