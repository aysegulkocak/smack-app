//
//  UserDataService.swift
//  smack-app
//
//  Created by Ayşegül Koçak on 23.07.2018.
//  Copyright © 2018 Ayşegül Koçak. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService() // singleton
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""

    func setUserData(id: String, color: String, avatarName: String, email: String, name: String){
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName // a function to update the avatar name
    }
}
