//
//  RegisterViewController.swift
//  Unexpected Journey
//
//  Created by Justin Hu on 5/23/15.
//  Copyright (c) 2015 Tech Steam. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var BirthdayTextField: CustomTextFieldWithLogo!
    
    @IBAction func BirthdayDatePicker(sender: UITextField) {
        var datePickerView  : UIDatePicker = UIDatePicker()
        datePickerView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.8)
        datePickerView.datePickerMode = UIDatePickerMode.Date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: Selector("handleDatePicker:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func handleDatePicker(sender: UIDatePicker) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        BirthdayTextField.text = dateFormatter.stringFromDate(sender.date)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
