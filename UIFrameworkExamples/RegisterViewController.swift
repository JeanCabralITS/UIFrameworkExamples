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

class RegisterViewController: ViewController {
    
     let colors:[UIColor] = [UIColor.flatPlumColorDark(), UIColor.flatNavyBlue()]
    
    @IBAction func registerButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: colors)
        
        let emailTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: 60, width: 200, height: 30))
        let passwordTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y:90 , width: 200, height: 30))
        //let streetAddressTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: <#T##Double#>, width: <#T##Double#>, height: <#T##Double#>))
        //let cityTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: <#T##Double#>, width: <#T##Double#>, height: <#T##Double#>))
        //let stateTextField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: <#T##Double#>, width: <#T##Double#>, height: <#T##Double#>))
        
        emailTextField.placeholder = "Email"
        emailTextField.title = "Enter Your Email"
        emailTextField.tintColor = UIColor.flatLime()
        passwordTextField.placeholder = "Password"
        passwordTextField.title = "Enter Your Password"
        passwordTextField.isSecureTextEntry = true
        self.view.addSubview(passwordTextField)
        self.view.addSubview(emailTextField)

        // Do any additional setup after loading the view.
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
