//
//  ViewController.swift
//  Practical 2.2: Calculator App
//
//  Created by Avi Perera on 7/6/18.
//  Copyright © 2018 Avishka Perera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var X: UITextField!
    @IBOutlet weak var Y: UITextField!
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var History: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calcOps(_ sender: UIButton) {
        
        var value : Double = 0;
        switch sender.tag {
            
        case 0:
            value = Double(X.text!)! + Double(Y.text!)!
            History.text = "\(History.text!) \n  \(X.text!) + \(X.text!) = \(value)"
            
        case 1:
            value = Double(X.text!)! - Double(Y.text!)!
            History.text = "\(History.text!) \n  \(X.text!) - \(X.text!) = \(value)"
            
        case 2:
            value = Double(X.text!)! * Double(Y.text!)!
            History.text = "\(History.text!) \n  \(X.text!) * \(X.text!) = \(value)"
            
        case 3:
            value = Double(X.text!)! / Double(Y.text!)!
            History.text = "\(History.text!) \n  \(X.text!) / \(X.text!) = \(value)"
            
        default:
            print ("error")
        }
        
        
        result.text = "Result: " + "\n \(value)"
    }
    
    
}

