 //
//  ViewController.swift
//  repo2test
//
//  Created by Antonio Esposito on 27/02/17.
//  Copyright © 2017 Antonio Esposito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func azione2click(_ sender: Any) {
        print("azione dev 2")
    }

    @IBAction func azione1click(_ sender: Any) {
        print("azione dev 1")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

