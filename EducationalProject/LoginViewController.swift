//
//  LoginViewController.swift
//  EducationalProject
//
//  Created by Алексей on 03.07.2022.
//
import UIKit

class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    
    @IBOutlet var fieldUserName: UITextField!
    @IBOutlet var fieldPassword: UITextField!
    
    // MARK: - Private properties
    
    private let userName = "Aleksei"
    private let passwordUser = "Swiftbook"
    
    // MARK: - Override Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = self.fieldUserName.text ?? "user"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super .touchesBegan(touches, with: event)
            view.endEditing(true)
        }
    
    //MARK: - IB Actions
    
    @IBAction func singInAttempt(_ sender: UIStoryboardSegue) {
        guard let login = fieldUserName.text, !login.isEmpty else {
            showAlertAuthError(
                with: "Invalid login or password",
                and: "Please, enter corrent login and password"
            )
            return
        }
        guard let password = fieldUserName.text, !login.isEmpty else {
            showAlertAuthError(
                with: "Invalid login or password",
                and: "Please, enter corrent login and password"
            )
            return
        }
                
//        if self.fieldUserName.text != userName || self.fieldPassword.text != passwordUser {
//            showAlertAuthError(
//                with: "Invalid login or password",
//                and: "Please, enter corrent login and password"
//            )
//        }
    }
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        guard seque.source is WelcomeViewController else { return }
        self.fieldUserName.text = nil
        self.fieldPassword.text = nil
    }
    
    // MARK: - IB Actions AllertControllers
    
    @IBAction func showAlertUserName(_ sender: UIButton) {
        showAllert(with: "Oooh?!", and: "Your name is Aleksei")
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        showAllert(with: "Oops?!", and: "Your password is Swift")
    }
}

// MARK: - UIAlertController

extension LoginViewController {
    
    private func showAlertAuthError(with title: String, and message: String) {
        let authorizationError = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        authorizationError.addAction(okButton)
        present(authorizationError, animated: true, completion: nil)
    }
    
    private func showAllert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}
