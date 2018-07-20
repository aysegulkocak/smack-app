//
//  ChannelVC.swift
//  smack-app
//
//  Created by Ayşegül Koçak on 17.07.2018.
//  Copyright © 2018 Ayşegül Koçak. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBAction func prepareForUnwind ( segue: UIStoryboardSegue){}
    
    //Outlets
    @IBOutlet weak var loginBtn: UIButton! // We're gonna need to change the title of login button when we're actually logged in and instead of showing "login" we're gonna display the user's name.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60 // How much is gonna be shown
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    

}
