//
//  StandardAlert.swift
//  Athena
//
//  Created by Cray Jaeger on 6/9/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit

class StandardAlert: UIAlertController {
    
    public static func alert(alertTitle: String, alertMessage: String, buttonTitle: String = "OK") -> UIAlertController
    {
        let alert = UIAlertController(title: "Login Error", message: "Username/Password combination not found", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alert
    }
}
