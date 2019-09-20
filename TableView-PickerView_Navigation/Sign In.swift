//
//  Sign In.swift
//  TableView-PickerView_Navigation
//
//  Created by Nilrajsinh Vaghela on 20/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class Sign_In: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUp(_ sender: Any) {
        let SignUpNg = storyboard?.instantiateViewController(withIdentifier: "SignUp")
        self.navigationController?.pushViewController(SignUpNg!, animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
