//
//  CreateAccountVC.swift
//  smack-app
//
//  Created by Ayşegül Koçak on 20.07.2018.
//  Copyright © 2018 Ayşegül Koçak. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createAccntPressed(_ sender: Any) {
        guard let email = emailTxt.text, emailTxt.text != "" else { return }
        guard let pass = passTxt.text, passTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("registered user")
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBOutlet weak var pickBGColorPressed: UIButton!
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    


}
