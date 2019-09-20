//
//  ViewController.swift
//  TableView-PickerView_Navigation
//
//  Created by Nilrajsinh Vaghela on 20/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let MainDetail:[[String:String]] = [
        ["Title":"Sign In", "Controller":"SignIn"],
        ["Title":"Sign Up", "Controller":"SignUp"]
    ]
    
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return MainDetail.count
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return MainDetail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

          let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
          cell.textLabel?.text = MainDetail[indexPath.section]["Title"]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let Navigate = self.storyboard?.instantiateViewController(withIdentifier: MainDetail[indexPath.section]["Controller"]!)
        
        self.navigationController?.pushViewController(Navigate!, animated: true)
        

    
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

