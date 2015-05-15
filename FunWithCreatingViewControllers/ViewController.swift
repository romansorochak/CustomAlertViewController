//
//  ViewController.swift
//  FunWithCreatingViewControllers
//
//  Created by super_user on 5/15/15.
//  Copyright (c) 2015 DevCom. All rights reserved.
//

import UIKit

class ViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func showAlert(sender: UIButton) {
        
        let alertVC = AlertViewController.createAlertViewController()
        
        alertVC.handlerOkClicked = {
            
            println("aklsdhg")
        }
        
        AlertViewController.presentAlertViewController(alertVC, fromViewController: self)
    }
}
