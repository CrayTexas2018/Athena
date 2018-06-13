//
//  FeedViewController.swift
//  Athena
//
//  Created by Cray Jaeger on 6/9/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit
import Firebase

class FeedViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // If user not logged in, present login screen
        if Auth.auth().currentUser == nil {
            self.navigateToLogin()
        }
    }
    
    private func navigateToLogin() {
        if let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginView") as? LoginController {
            self.present(loginViewController, animated: true, completion: nil)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
