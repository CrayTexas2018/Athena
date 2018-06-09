//
//  ViewController.swift
//  Athena
//
//  Created by Cray Jaeger on 6/8/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit
import Firebase

class LoginController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberMeLabel: StandardLabel!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    @IBOutlet weak var loginButton: RoundedButton!
    @IBOutlet weak var createAccountButton: RoundedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = Colors.athenaBlack
        createTestUser()
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let username = usernameTextField.text else {
            return
        }
        guard let password = passwordTextField.text else {
            return
        }
        
        if (LoginUtility.login(username: username, password: password)) {
            if let tabViewController = storyboard?.instantiateViewController(withIdentifier: "MainTabView") as? FeedViewController {
                present(tabViewController, animated: true, completion: nil)
            }
        } else {
            let alert = StandardAlert.alert(alertTitle: "Login Error", alertMessage: "Account not found", buttonTitle: "OK")
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        
    }
    
    func createTestUser()
    {
        let isoDate = "2016-04-14T10:44:00+0000"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
        let date = dateFormatter.date(from: isoDate)!
        
        let user = User(userId: 1, guid: "asdf", email: "asdf@asdf.com", username: "asdf", firstName: "asdf", lastName: "ghjk", gender: User.Gender.male, dob: date, created: Date(), upated: Date())
        
        print(User.age(dob: user.dob))
    }


}

