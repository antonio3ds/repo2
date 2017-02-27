//
//  DIALOG_UTILS.swift
//  repo2test
//
//  Created by Antonio Esposito on 27/02/17.
//  Copyright © 2017 Antonio Esposito. All rights reserved.
//

import Foundation
import UIKit

class DIALOG_UTILS {
    static let sharedInstance = DIALOG_UTILS()
    
    func showAlertDefault(v:ViewController, titolo:String, messaggio:String, confirm:String, confirmAction: @escaping (UIAlertAction) -> Void) {
        print("showAlert")
        let alertController = UIAlertController(title: titolo, message:
            messaggio, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: confirm, style: UIAlertActionStyle.default,handler:confirmAction))
        v.present(alertController, animated: true, completion: nil)
    }
    
    func showAlertMultipleChoice(v:ViewController, titolo:String, messaggio:String, confirm:String, opzioni:Array<Any> , confirmAction: @escaping (UIAlertAction) -> Void  ){
        
        let alertController = UIAlertController(title: titolo, message:
            messaggio, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: confirm, style: UIAlertActionStyle.default,handler:confirmAction))
        if(opzioni != nil){
            for str in opzioni {
                if str is String {
                    alertController.addAction(UIAlertAction(title:str as? String, style: UIAlertActionStyle.default,handler:confirmAction))
                }
            }
        }
        v.present(alertController, animated: true, completion: nil)
        
    }
}
