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

    @IBAction func azione1click(_ sender: Any) {
       // print("azione dev 1")
        
        /* DIALOG_UTILS.sharedInstance.showAlertDefault(v:self, titolo: "Attenzione",messaggio: "Azione 1", confirm:"Ok", confirmAction:
         { action in
         print("Action")
         })*/
        
        
        var optz = ["Opzione 1","Opzione 2","Opzione 3"]
        //let optz = [String]()
        optz.append("Opzione 4")
        optz.append("Opzione 5")
        DIALOG_UTILS.sharedInstance.showAlertMultipleChoice(v:self, titolo: "Attenzione",messaggio: "Azione 1", confirm:"Ok", opzioni:optz, confirmAction:
            { action in
                print("Action ", action.title ?? "")
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

