//
//  Constants.swift
//  Smack
//
//  Created by A664291 on 8/7/17.
//  Copyright © 2017 KingdomBits. All rights reserved.
//

import Foundation


// ALIAS
typealias CompletionHandler = (_ Success: Bool) -> ()

// SEGUE
let TO_LOGIN = "toLogin"
let TO_CREATE = "toCreate"
let UNWIND = "unwindToChannel"

// USER DEFAULTS
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// URL
let BASE_URL = "https://smackymcchat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
