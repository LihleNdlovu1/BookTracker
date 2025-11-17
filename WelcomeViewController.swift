//
//  WelcomeViewController.swift
//  SimpleLoginApp
//
//  Created by Lubelihle Ndlovu on 2025/07/15.
//

import UIKit

class UserInformation {
    
}

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    var userEmail: String?
    
    override func viewWillAppear(_ animated: Bool) {
        welcomeLabel.text = "Welcome Unknown User"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let email = userEmail {
            welcomeLabel.text = "Welcome, \(email)!"
        } else {
            welcomeLabel.text = "Welcome Unknown User"
        }
    }
}

