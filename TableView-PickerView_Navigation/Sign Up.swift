//
//  Sign Up.swift
//  TableView-PickerView_Navigation
//
//  Created by Nilrajsinh Vaghela on 20/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class Sign_Up: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    let countrylist = ["India","Canada","U.S.A.","China"]
    let genderlist = ["Male","Female","other"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == Country  {
            return self.countrylist.count
        }
        else if pickerView == Gender {
            return self.genderlist.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == Country  {
            return self.countrylist[row]
        }
        else if pickerView == Gender {
            return self.genderlist[row]
        }
        return nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var Country: UIPickerView!
    
    @IBOutlet weak var Gender: UIPickerView!
    
    @IBAction func Register(_ sender: Any) {
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "SignIn")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
        
    }
    
    @IBAction func LogIn(_ sender: Any) {
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "SignIn")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
        
    }
    

}
