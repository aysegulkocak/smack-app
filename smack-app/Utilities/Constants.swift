//
//  Constants.swift
//  smack-app
//
//  Created by Ayşegül Koçak on 20.07.2018.
//  Copyright © 2018 Ayşegül Koçak. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> () // typealies is simply renaming a type. This type is "closure"
/*
 What a closure is it's a first class function that can be passed around in code.
 */

//URL Constants
let BASE_URL = "https://chattychatychatchat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"


//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
