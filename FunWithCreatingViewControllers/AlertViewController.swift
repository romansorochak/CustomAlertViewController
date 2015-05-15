//
//  ViewController.swift
//  FunWithCreatingViewControllers
//
//  Created by super_user on 5/15/15.
//  Copyright (c) 2015 DevCom. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var alertTitleLabel: UILabel!
    @IBOutlet weak var alertMessageLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    
    
    /*
    * MARK - funcs to show this Alert
    */
    
    class func createAlertViewController() -> AlertViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewControllerWithIdentifier("alertVC") as! AlertViewController
    }
    
    class func presentAlertViewController(alertVC: AlertViewController, fromViewController: UIViewController) {
        
        let iOS7 = floor(NSFoundationVersionNumber) <= floor(NSFoundationVersionNumber_iOS_7_1)
        let iOS8 = floor(NSFoundationVersionNumber) > floor(NSFoundationVersionNumber_iOS_7_1)
        if iOS8 {
            alertVC.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        } else {
            alertVC.modalPresentationStyle = UIModalPresentationStyle.CurrentContext
        }
        
        fromViewController.presentViewController(alertVC, animated: true, completion: nil)
    }
    
    
    /*
    * MARK - handler
    */
    
    var handlerOkClicked: (()->Void)?
    
    
    /*
    * MARK - ViewController life cycle
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    * MARK - private
    */
    
    @IBAction func okButtonClicked(sender: UIButton) {
        handlerOkClicked?()
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    private func setup() {
        
        self.alertView.layer.cornerRadius = 5
        self.alertTitleLabel.layer.cornerRadius = 5
        self.alertMessageLabel.layer.cornerRadius = 5
        self.okButton.layer.cornerRadius = 5
    }
}

