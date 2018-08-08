//
//  LogInViewController.swift
//  UIFrameworkExamples
//
//  Created by Jean Cabral on 8/3/18.
//  Copyright © 2018 Jean Cabral. All rights reserved.
//

import UIKit
import ChameleonFramework
import SkyFloatingLabelTextField


class LogInViewController: UIViewController, UITextFieldDelegate {

    //MARK:Properties
    
    let colors:[UIColor] = [UIColor.flatPlumColorDark(), UIColor.flatNavyBlue()]
    
    var emailTextField : SkyFloatingLabelTextFieldWithIcon = {
        var mailTextField = SkyFloatingLabelTextFieldWithIcon()
        mailTextField.iconFont = UIFont(name: "fontawesome", size: 15)
        mailTextField.iconText = "\u{f0e0}"
        mailTextField.selectedIconColor = #colorLiteral(red: 0.9725490196, green: 0.7333333333, blue: 0.3411764706, alpha: 1)
        mailTextField.placeholder = "Email"
        mailTextField.title = "Please Enter Your Email"
        mailTextField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        mailTextField.lineHeight = 0
        mailTextField.selectedLineHeight = 0
        return mailTextField
    }()
    
    var passwordTextField :SkyFloatingLabelTextFieldWithIcon = {
        var pwTextField = SkyFloatingLabelTextFieldWithIcon()
        pwTextField.iconFont = UIFont(name: "fontawesome", size: 18)
        pwTextField.iconText = "\u{f023}"
        pwTextField.title = "Enter a Password"
        pwTextField.placeholder = "Password"
        pwTextField.selectedIconColor = #colorLiteral(red: 0.9725490196, green: 0.7333333333, blue: 0.3411764706, alpha: 1)
        pwTextField.isSecureTextEntry = true
        pwTextField.lineHeight = 0
        pwTextField.selectedLineHeight = 0
        return pwTextField
    }()
    
    //MARK: LOG IN Pressed
    @IBAction func logInPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToLawyer", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: colors)
        emailTextField.delegate = self
        self.view.addSubview(passwordTextField)
        self.view.addSubview(emailTextField)
        layoutSubviews()
  
    }
    
    //MARK: AutoLayout
    func layoutSubviews(){
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 175).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 250).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 175).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    
    //MARK: Textfield Delegate Method
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text {
            if let floatingLabelTextField = textField as? SkyFloatingLabelTextField {
                if(text.count < 3 || !text.contains("@")) {
                    floatingLabelTextField.errorMessage = "Invalid email"
                }
                else {
                    // The error message will only disappear when we reset it to nil or empty string
                    floatingLabelTextField.errorMessage = nil
                }
            }
        }
        return true
    }
    

  

}
