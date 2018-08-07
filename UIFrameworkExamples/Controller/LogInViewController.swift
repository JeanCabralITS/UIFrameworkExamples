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

    //MARK: 
    let colors:[UIColor] = [UIColor.flatPlumColorDark(), UIColor.flatNavyBlue()]
    
    
    @IBAction func logInPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToLawyer", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: colors)
        let mailTextField = SkyFloatingLabelTextField(frame: CGRect(x: self.view.frame.maxX / 4, y: self.view.frame.maxY/8, width: 200, height: 60))
        let passwordTextField = SkyFloatingLabelTextField(frame: CGRect(x: self.view.frame.maxX / 4, y: self.view.frame.maxY/4, width: 200, height: 60))
        mailTextField.placeholder = "Email"
        mailTextField.title = "Enter Your Email "
        mailTextField.delegate = self
        
        passwordTextField.placeholder = "Password"
        passwordTextField.title = "Enter Your Password"
        passwordTextField.isSecureTextEntry = true
        mailTextField.lineHeight = 0
        mailTextField.selectedLineHeight = 0
        passwordTextField.lineHeight = 0
        passwordTextField.selectedLineHeight = 0
    
        
        
        self.view.addSubview(passwordTextField)
        self.view.addSubview(mailTextField)
        
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
