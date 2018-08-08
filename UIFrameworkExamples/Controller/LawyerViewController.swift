//
//  LawyerViewController.swift
//  UIFrameworkExamples
//
//  Created by Jean Cabral on 8/7/18.
//  Copyright © 2018 Jean Cabral. All rights reserved.
//

import UIKit
import SwiftyJSON

class LawyerViewController: UITableViewController {

    var lawyerArray = [Lawyer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRequest()
    }

    //MARK: JSON
    
    func getRequest(){
        guard let lawyerUrl = URL(string: "https://data.ny.gov/resource/cdhq-buk7.json?first_name=YUKI") else { return }// After the question mark u can change the property you are looking for.
        
        URLSession.shared.dataTask(with: lawyerUrl) { (data, response
            , error) in
            guard let data = data else { return }
            do {
                let json = JSON(data)
                
                // Iterate through elements and check if the law school == NYU.
                for names in 0...json.count{
                    if json[names]["law_school"] == "NEW YORK UNIVERSITY"{
                        self.lawyerArray.append(json[0].object as! Lawyer)
                    }
                    
                }
                //let decoder = JSONDecoder()
                //let lawyerData = try decoder.decode(Lawyer.self, from: data)
                print(json[0])
                print(self.lawyerArray)
                
            } catch let err {
                print("Err", err)
            }
            }.resume()
    }
    
    
    //MARK: Tableview Data Source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return lawyerArray.count
    }
    
    
    //MARK: Table Delegate Methods

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        cell.textLabel?.text = lawyerArray[indexPath.row].first_name
        
        return cell
    }
    
//    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    
}
