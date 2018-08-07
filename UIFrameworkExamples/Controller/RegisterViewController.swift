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
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToLawyer", sender: self)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: colors)
        
        let nameTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: 75, width: 200, height: 35))
        let passwordTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y:115 , width: 200, height: 35))
        let streetAddressTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: 155, width: 200, height: 35))
        let cityTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: 205, width: 200, height: 35))
        let stateTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: 245, width: 200, height: 35))
        let emailTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: 285, width: 200, height: 35))
        
        nameTextField.placeholder = "Name"
        nameTextField.title = "Enter Your Name"
        nameTextField.lineHeight = 0
        nameTextField.selectedLineHeight = 0
        //nameTextField.tintColor = UIColor.flatLime()
        
        
        passwordTextField.placeholder = "Password"
        passwordTextField.title = "Enter Your Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.lineHeight = 0
        passwordTextField.selectedLineHeight = 0
        
        streetAddressTextField.placeholder = "Address"
        streetAddressTextField.title = "Enter Your Address"
        streetAddressTextField.lineHeight = 0
        streetAddressTextField.selectedLineHeight = 0
        
        cityTextField.placeholder = "City"
        cityTextField.title = "Enter Your City"
        cityTextField.lineHeight = 0
        cityTextField.selectedLineHeight = 0
        
        stateTextField.placeholder = "State"
        stateTextField.title = "Enter Your State"
        stateTextField.lineHeight = 0
        stateTextField.selectedLineHeight = 0
        
        
        emailTextField.placeholder = "Email"
        emailTextField.title = "Email Address"
        emailTextField.lineHeight = 0
        emailTextField.selectedLineHeight = 0
        emailTextField.errorColor = UIColor.red
        emailTextField.delegate = self
        
        
        self.view.addSubview(passwordTextField)
        self.view.addSubview(nameTextField)
        self.view.addSubview(streetAddressTextField)
        self.view.addSubview(cityTextField)
        self.view.addSubview(stateTextField)
        self.view.addSubview(emailTextField)

        // Do any additional setup after loading the view.
    }

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
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
