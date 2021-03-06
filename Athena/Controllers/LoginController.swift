//
//  ViewController.swift
//  Athena
//
//  Created by Cray Jaeger on 6/8/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

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
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Auth.auth().currentUser != nil {
            self.navigateToMain()
        }
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let email = usernameTextField.text else {
            return
        }
        guard let password = passwordTextField.text else {
            return
        }
        
        // Firebase login
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                let alert = StandardAlert.alert(alertTitle: "Login Error", alertMessage: "Account not found", buttonTitle: "OK")
                self.present(alert, animated: true, completion: nil)
            }
            if LoginUtility.isUserSignedIn() {
                self.navigateToMain()
            }
        }
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        
    }
    
    private func navigateToMain() {
        if let tabViewController = self.storyboard?.instantiateViewController(withIdentifier: "MainTabView") as? FeedViewController {
            self.present(tabViewController, animated: true, completion: nil)
        }
    }
    
//    func createTestUser()
//    {
//        let isoDate = "2016-04-14T10:44:00+0000"
//        
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
//        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
//        let date = dateFormatter.date(from: isoDate)!
//        
//        let user = User(userId: 1, guid: "asdf", email: "asdf@asdf.com", username: "asdf", firstName: "asdf", lastName: "ghjk", gender: User.Gender.male, dob: date, created: Date(), upated: Date(), gr)
//        
//        print(User.age(dob: user.dob))
//    }


}

