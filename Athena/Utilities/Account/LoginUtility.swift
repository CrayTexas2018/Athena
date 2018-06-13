//
//  LoginUtility.swift
//  Athena
//
//  Created by Cray Jaeger on 6/9/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

public struct LoginUtility {
    
    public static func login(email: String, password: String) -> Bool {
        var status = false
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                status = false
            }
            if user != nil {
                status = true
            }
        }
        return status
    }
    
    public static func logout() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("Error logging out")
        }
    }
    
    public static func isUserSignedIn() -> Bool {
        if Auth.auth().currentUser == nil {
            return false
        }
        return true
    }
}
