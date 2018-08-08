//
//  RegisterViewController.swift
//  UIFrameworkExamples
//
//  Created by Jean Cabral on 8/3/18.
//  Copyright © 2018 Jean Cabral. All rights reserved.
//

import UIKit
import ChameleonFramework
import SkyFloatingLabelTextField

class RegisterViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
     let colors:[UIColor] = [UIColor.flatPlumColorDark(), UIColor.flatNavyBlue()]
    
    var nameTextField : SkyFloatingLabelTextFieldWithIcon = {
        var nmTextField = SkyFloatingLabelTextFieldWithIcon()
        nmTextField.placeholder = "Name"
        nmTextField.title = "Enter Name"
        nmTextField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        nmTextField.selectedIconColor = #colorLiteral(red: 0.9725490196, green: 0.7333333333, blue: 0.3411764706, alpha: 1)
        nmTextField.titleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        nmTextField.lineHeight = 0
        nmTextField.selectedLineHeight = 0
        nmTextField.iconFont = UIFont(name: "fontawesome", size: 15)
        nmTextField.iconText = "\u{f007}"
        nmTextField.translatesAutoresizingMaskIntoConstraints = false
        return nmTextField
    }()
    
    var passwordTextField : SkyFloatingLabelTextFieldWithIcon = {
        var pwTextField = SkyFloatingLabelTextFieldWithIcon()
        pwTextField.placeholder = "Password"
        pwTextField.title = "Create Password"
        pwTextField.selectedIconColor = #colorLiteral(red: 0.9725490196, green: 0.7333333333, blue: 0.3411764706, alpha: 1)
        pwTextField.titleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        pwTextField.isSecureTextEntry = true
        pwTextField.lineHeight = 0
        pwTextField.selectedLineHeight = 0
        pwTextField.iconFont = UIFont(name: "fontawesome", size: 15)
        pwTextField.iconText = "\u{f023}"
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        return pwTextField
    }()
    
    var streetAddressTextField : SkyFloatingLabelTextFieldWithIcon = {
        var streetTextField = SkyFloatingLabelTextFieldWithIcon()
        streetTextField.placeholder = "Address"
        streetTextField.title = "Enter Address"
        streetTextField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        streetTextField.selectedIconColor = #colorLiteral(red: 0.9725490196, green: 0.7333333333, blue: 0.3411764706, alpha: 1)
        streetTextField.titleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        streetTextField.lineHeight = 0
        streetTextField.selectedLineHeight = 0
        streetTextField.iconFont = UIFont(name: "fontawesome", size: 15)
        streetTextField.iconText = "\u{f018}"
        streetTextField.translatesAutoresizingMaskIntoConstraints = false
        return streetTextField
    }()
    
    var cityTextField : SkyFloatingLabelTextFieldWithIcon = {
        var ctyTextField = SkyFloatingLabelTextFieldWithIcon()
        ctyTextField.placeholder = "City"
        ctyTextField.title = "Enter City"
        ctyTextField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ctyTextField.selectedIconColor = #colorLiteral(red: 0.9725490196, green: 0.7333333333, blue: 0.3411764706, alpha: 1)
        ctyTextField.titleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        ctyTextField.lineHeight = 0
        ctyTextField.selectedLineHeight = 0
        ctyTextField.iconFont = UIFont(name: "fontawesome", size: 15)
        ctyTextField.iconText = "\u{f1ad}"
        ctyTextField.translatesAutoresizingMaskIntoConstraints = false
        return ctyTextField
    }()
    
    var stateTextField : SkyFloatingLabelTextFieldWithIcon = {
        var statesTextField = SkyFloatingLabelTextFieldWithIcon()
        statesTextField.placeholder = "State"
        statesTextField.title = "Enter State"
        statesTextField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        statesTextField.selectedIconColor = #colorLiteral(red: 0.9725490196, green: 0.7333333333, blue: 0.3411764706, alpha: 1)
        statesTextField.titleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        statesTextField.lineHeight = 0
        statesTextField.selectedLineHeight = 0
        statesTextField.iconFont = UIFont(name: "fontawesome", size: 15)
        statesTextField.iconText = "\u{f276}"
        statesTextField.translatesAutoresizingMaskIntoConstraints = false
        return statesTextField
    }()
    
    var emailTextField : SkyFloatingLabelTextFieldWithIcon = {
        var mailTextField = SkyFloatingLabelTextFieldWithIcon()
        mailTextField.placeholder = "Email"
        mailTextField.title = "Enter Email"
        mailTextField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        mailTextField.selectedIconColor = #colorLiteral(red: 0.9725490196, green: 0.7333333333, blue: 0.3411764706, alpha: 1)
        mailTextField.titleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        mailTextField.lineHeight = 0
        mailTextField.selectedLineHeight = 0
        mailTextField.errorColor = UIColor.red
        mailTextField.iconFont = UIFont(name: "fontawesome", size: 15)
        mailTextField.iconText = "\u{f0e0}"
        mailTextField.translatesAutoresizingMaskIntoConstraints = false
        return mailTextField
    }()
    
    
    //MARK: Register Button
    @IBAction func registerButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToLawyer", sender: self)
    }
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: colors)
        emailTextField.delegate = self
        self.view.addSubview(passwordTextField)
        self.view.addSubview(nameTextField)
        self.view.addSubview(streetAddressTextField)
        self.view.addSubview(cityTextField)
        self.view.addSubview(stateTextField)
        self.view.addSubview(emailTextField)
        layoutSubview()
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
    
    // MARK: AutoLayout Code
    func layoutSubview(){
     
        nameTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 25).isActive = true
        nameTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        nameTextField.widthAnchor.constraint(equalToConstant: 175).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        streetAddressTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 25).isActive = true
        streetAddressTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 175).isActive = true
        streetAddressTextField.widthAnchor.constraint(equalToConstant: 275).isActive = true
        streetAddressTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        cityTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 25).isActive = true
        cityTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 250).isActive = true
        cityTextField.widthAnchor.constraint(equalToConstant: 175).isActive = true
        cityTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        stateTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 25).isActive = true
        stateTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 325).isActive = true
        stateTextField.widthAnchor.constraint(equalToConstant: 175).isActive = true
        stateTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        emailTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 25).isActive = true
        emailTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 275).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

 
 

}
