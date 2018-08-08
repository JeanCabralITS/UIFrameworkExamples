//
//  LawyerViewController.swift
//  UIFrameworkExamples
//
//  Created by Jean Cabral on 8/7/18.
//  Copyright © 2018 Jean Cabral. All rights reserved.
//

import UIKit
import SwiftyJSON
import ChameleonFramework
import SVProgressHUD


class LawyerViewController: UITableViewController {

//MARK: Properties
    var lawyerArray = [Lawyer]()
    
//MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchJSON()
    }

//MARK: Get The JSON
    fileprivate func fetchJSON(){
        guard let lawyerUrl = URL(string: "https://data.ny.gov/resource/cdhq-buk7.json?first_name=YUKI") else { return }
        URLSession.shared.dataTask(with: lawyerUrl) { (data, response
            , error) in
            DispatchQueue.main.async{
                
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                self.lawyerArray = try decoder.decode([Lawyer].self, from: data)
                print(self.lawyerArray)// Debug and check if data was added to Lawyer Array
                SVProgressHUD.show()
                self.tableView.reloadData()
                SVProgressHUD.dismiss()
            } catch let err {
                print("Err", err)
                }
                
            }
        }.resume()
        
    }
    
//MARK: Tableview Data Source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lawyerArray.count
    }
    
//MARK: Table Delegate Methods

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LawyerCell", for: indexPath) as UITableViewCell
        let lawyer = lawyerArray[indexPath.row]
        cell.textLabel?.text = lawyer.lastName ?? "??"
        return cell
    }
    
    
//    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    
}
