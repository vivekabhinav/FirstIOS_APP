//
//  ViewController.swift
//  Myfirstapp
//
//  Created by cloud on 17/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UILabel!
    
    
    @IBOutlet weak var passwordTF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(true)
        //print("viewWillAppear")
    }
    
    @IBAction func loginAction(_ sender: Any) {
        let username = usernameTF.text ?? ""
        let password = passwordTF.text ?? ""
        if(username.count > 0 && username == "abhinav") && (password == "abhinav") {
            let objSignupViewController = self.storyboard?.instantiateViewController(Identifier: "SignupVC") as? SignupViewController
            
            if let objSignupViewController = objSignupViewController{
                objSignupViewController.receivedData = "passing to signup" self.navigationController?.pushViewController(objSignupViewController, animated: true))
            }
        }
        else{
            print("check username / password")
        }
    }
    

}

