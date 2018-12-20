//
//  LoginVC.swift
//  APITest
//
//  Created by Admin on 12/18/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var usernameTextField: UITextField! //make variables have very clear names like usernameTextfield so we kow later on it's a textfield
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var invalidCredentialsLabel: UILabel!
    
    
    //MARK: - Properties
    let loginVM = LoginVM() //this calls the struct from the loginVC so that the view controller is now referencing the view model

    override func viewDidLoad() {
        super.viewDidLoad()
        invalidCredentialsLabel.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Actions
    @IBAction func loginAction(_ sender: Any) {
        guard let username = usernameTextField.text, let password = passwordTextField.text else {
            return
        }
        loginVM.attemptLogin(username: username, password: password) { (result) in
            print("completion Handler result: \(result)")
            switch result {
            case .success:
                invalidCredentialsLabel.isHidden = true
                 print("completionHandler good credentials")
                performSegue(withIdentifier: Constants.characterTableSegue, sender: sender)
            case .fail:
                print("completionHandler bad credentials")
                invalidCredentialsLabel.isHidden = false

            }
        }
        //this is one of the only places its ok to put force unwrap (the exclamation point) becasue the default is an empty string and not nil
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("🥝 prepare for segue")
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
