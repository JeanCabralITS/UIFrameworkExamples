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

class LogInViewController: ViewController {

    //MARK: 
    let colors:[UIColor] = [UIColor.flatPlumColorDark(), UIColor.flatNavyBlue()]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: colors)
        let mailTextField = SkyFloatingLabelTextField(frame: CGRect(x: 100, y: 45, width: 200, height: 45))
        let passwordTextField = SkyFloatingLabelTextField(frame: CGRect(x: 100, y: 90, width: 200, height: 45))
        mailTextField.placeholder = "Email"
        mailTextField.title = "Enter Your Email "
        mailTextField.tintColor = UIColor.flatLime()
        passwordTextField.placeholder = "Password"
        passwordTextField.title = "Enter Your Password"
        passwordTextField.isSecureTextEntry = true
        self.view.addSubview(passwordTextField)
        self.view.addSubview(mailTextField)
        
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
