//
//  ViewController.swift
//  Lab 2
//
//  Created by user237236 on 1/15/24.
//

import UIKit

class ViewController: UIViewController {
    var screenNumber:Int = 0
    var step:Int = 1

    @IBOutlet weak var numberText: UILabel!
    
    @IBAction func buttonInc(_ sender: Any) {
        screenNumber += step
        numberText.text = String(screenNumber)
    }
    @IBAction func buttonDec(_ sender: Any) {
        screenNumber -= step
        numberText.text = String(screenNumber)
    }
    
    @IBAction func buttonReset(_ sender: Any) {
        screenNumber = 0
        step = 1
        numberText.text = String(screenNumber)
    }
    @IBAction func buttonStep(_ sender: Any) {
        step = 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenNumber = Int(numberText.text!) ?? 0
        
        // Do any additional setup after loading the view.
    }
}

