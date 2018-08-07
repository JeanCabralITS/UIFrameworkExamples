//
//  ViewController.swift
//  UIFrameworkExamples
//
//  Created by Jean Cabral on 7/31/18.
//  Copyright © 2018 Jean Cabral. All rights reserved.
//

import UIKit
import ChameleonFramework
import SkyFloatingLabelTextField
import SwiftyJSON


/*
 The Color Theme for the app is Orange and FlatTeal closer to navy blue.
 
*/

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var register: UIButton!
    @IBOutlet weak var logIn: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    let lawyerURL = "https://data.ny.gov/resource/cdhq-buk7.json"
    let questionMark = "?"
    var query = "="
    var paramaterToSearch = "" // Takes on the name of one of the Lawyer's properties to search
    
    var namesArray:[String] = []
    
    
    // Response is lawyerURL + questoinMark + query + paramaterToSearch
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  getData()
        //getRequest()
        /*
         Example of using the SKYFloatingLabelTextField. Need to prorgammmatically add elements.
         Can change the color. 
         */
        let colors:[UIColor] = [UIColor.flatPlumColorDark(), UIColor.flatNavyBlue()]
        view.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: view.frame, andColors: colors)
        
        
        
//        let nameTextField = SkyFloatingLabelTextField(frame: CGRect(x: 100, y: 45, width: 200, height: 45))
//        let passwordTextField = SkyFloatingLabelTextField(frame: CGRect(x: 100, y: 90, width: 200, height: 45))
//        
//        nameTextField.placeholder = "Name"
//        nameTextField.title = "Your full name"
//        passwordTextField.placeholder = "Password"
//        passwordTextField.title = "Enter Your Password"
//        passwordTextField.isSecureTextEntry = true
//        
//        self.view.addSubview(passwordTextField)
//        self.view.addSubview(nameTextField)
        // Do any additional setup after loading the view, typically from a nib.
    }

   // GET REQUEST -->
  
    
    
    func parseJSON(){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

