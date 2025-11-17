//
//  LoginViewController.swift
//  SimpleLoginApp
//
//  Created by Lubelihle Ndlovu on 2025/07/15.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var WelcomeLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        loginButton.layer.cornerRadius = 8
        
        passwordTextField.isSecureTextEntry = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty else {
            showAlert(message: "Please enter your email.")
            return
        }

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let welcomeVC = storyboard.instantiateViewController(identifier: "WelcomeViewController") as? WelcomeViewController {
            welcomeVC.userEmail = email
            navigationController?.pushViewController(welcomeVC, animated: true)
        }
    }

   
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Missing Info", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
