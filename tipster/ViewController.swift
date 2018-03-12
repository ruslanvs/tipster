//
//  ViewController.swift
//  tipster
//
//  Created by Ruslan Suvorov on 3/9/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var checkTotalLabel: UILabel!
    var checkTotal: Double = 0
    var decOn = false
    var decCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkTotalLabel.text = "\(checkTotal)"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func decPressed(){
        decOn = true
    }
    
    @IBAction func buttonPressed(_ sender: UIButton ){
        print( decOn )
        if decOn == true && decCount == 0 {
            decCount += 1
            checkTotal = checkTotal + Double(sender.tag / 10)
        } else if decOn == true && decCount == 1 {
            decCount += 1
            checkTotal = checkTotal + Double(sender.tag / 100)
        } else {
            checkTotal = checkTotal * 10 + Double(sender.tag)
        }
//        if checkTotal != 0 {
//            checkTotal = checkTotal * 10 + sender.tag
//        } else {
//            checkTotal = sender.tag
//        }
        checkTotalLabel.text = "\(checkTotal)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

