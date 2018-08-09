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
let URL_LOGIN = "\(BASE_URL)account/login" // these URL are going to spesific location on the API. And so that the API knows what to do with the spesific information and the requests that it's receiving.
let URL_USER_ADD = "\(BASE_URL)user/add"

// Colors
let smackPurplePlaceholder = #colorLiteral(red: 0.2549019608, green: 0.3160409033, blue: 0.7365054488, alpha: 0.5)

// Notification Constants
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"


//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
