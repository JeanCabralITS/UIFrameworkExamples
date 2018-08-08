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
    
     let colors:[UIColor] = [UIColor.flatPlumColorDark(), UIColor.flatNavyBlue()]
    
    var nameTextField : SkyFloatingLabelTextField = {
        var nmTextField = SkyFloatingLabelTextField()
        nmTextField.placeholder = "Name"
        nmTextField.title = "Enter Name"
        nmTextField.lineHeight = 0
        nmTextField.selectedLineHeight = 0
        nmTextField.translatesAutoresizingMaskIntoConstraints = false
        return nmTextField
    }()
    
    var passwordTextField : SkyFloatingLabelTextField = {
        var pwTextField = SkyFloatingLabelTextField()
        pwTextField.placeholder = "Password"
        pwTextField.title = "Create Password"
        pwTextField.isSecureTextEntry = true
        pwTextField.lineHeight = 0
        pwTextField.selectedLineHeight = 0
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        return pwTextField
    }()
    
    var streetAddressTextField : SkyFloatingLabelTextField = {
        var streetTextField = SkyFloatingLabelTextField()
        streetTextField.placeholder = "Address"
        streetTextField.title = "Enter Address"
        streetTextField.lineHeight = 0
        streetTextField.selectedLineHeight = 0
        streetTextField.translatesAutoresizingMaskIntoConstraints = false
        return streetTextField
    }()
    
    var cityTextField : SkyFloatingLabelTextField = {
        var ctyTextField = SkyFloatingLabelTextField()
        ctyTextField.placeholder = "City"
        ctyTextField.title = "Enter City"
        ctyTextField.lineHeight = 0
        ctyTextField.selectedLineHeight = 0
        ctyTextField.translatesAutoresizingMaskIntoConstraints = false
        return ctyTextField
    }()
    
    var stateTextField : SkyFloatingLabelTextField = {
        var statesTextField = SkyFloatingLabelTextField()
        statesTextField.placeholder = "State"
        statesTextField.title = "Enter State"
        statesTextField.lineHeight = 0
        statesTextField.selectedLineHeight = 0
        statesTextField.translatesAutoresizingMaskIntoConstraints = false
        return statesTextField
    }()
    
    var emailTextField : SkyFloatingLabelTextField = {
        var mailTextField = SkyFloatingLabelTextField()
        mailTextField.placeholder = "Email"
        mailTextField.title = "Enter Email"
        mailTextField.lineHeight = 0
        mailTextField.selectedLineHeight = 0
        mailTextField.errorColor = UIColor.red
        mailTextField.translatesAutoresizingMaskIntoConstraints = false
        return mailTextField
    }()
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToLawyer", sender: self)
    }
    
    
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

        // Do any additional setup after loading the view.
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
     
        nameTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50).isActive = true
        nameTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        nameTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        streetAddressTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50).isActive = true
        streetAddressTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 175).isActive = true
        streetAddressTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        streetAddressTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        cityTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50).isActive = true
        cityTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 250).isActive = true
        cityTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        cityTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        stateTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50).isActive = true
        stateTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 325).isActive = true
        stateTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        stateTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        emailTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50).isActive = true
        emailTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

 
 

}
