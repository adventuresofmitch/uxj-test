//
//  SignInViewController.swift
//  Unexpected Journey
//
//  Created by Jun Situ on 5/21/15.
//  Copyright (c) 2015 Tech Steam. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var EmailTextInput: CustomTextFieldWithLogo!
    @IBOutlet weak var PasswordTextInput: CustomTextFieldWithLogo!
    @IBOutlet weak var UserIcon: UIImageView!
    @IBOutlet weak var PasswordIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        EmailTextInput.delegate = self
        PasswordTextInput.delegate = self
        //EmailTextInput.leftpadding = 20.0
        EmailTextInput.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.tag == 1 {
            EmailTextInput.layer.borderColor = UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1.0).CGColor
            UserIcon.image = UIImage(named: "user-active")
        }
        
        if textField.tag == 2 {
            PasswordTextInput.layer.borderColor = UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1.0).CGColor
            PasswordIcon.image = UIImage(named: "password-active")
        }
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if textField.tag == 1 {
            EmailTextInput.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0).CGColor
            UserIcon.image = UIImage(named: "user")
        }
        
        if textField.tag == 2 {
            PasswordTextInput.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0).CGColor
            PasswordIcon.image = UIImage(named: "password")
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField.tag == 1 {
            EmailTextInput.resignFirstResponder()
            PasswordTextInput.becomeFirstResponder()
            return true
        } else if textField.tag == 2 {
            PasswordTextInput.resignFirstResponder()
            return true
        }
        
        return false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
