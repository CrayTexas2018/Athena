//
//  ViewController.swift
//  Athena
//
//  Created by Cray Jaeger on 6/8/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = Colors.athenaBlack
        createTestUser()
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

