//
//  RegistrationViewController.swift
//  Project
//
//  Created by cc on 7/3/17.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController,UITextFieldDelegate{
    

    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtMobileNo: UITextField!
    @IBOutlet weak var txtZIPCode: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtEmailId: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.passwordtxt.delegate = passwordtxt
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        txtUserName.text = txtAddress.text
    }
    
}

