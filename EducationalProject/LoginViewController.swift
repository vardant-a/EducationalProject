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
    
    @IBOutlet var foggotUserName: UIButton!
    @IBOutlet var foggotPassword: UIButton!
    
    
    // MARK: - Private properties
    
    private let userName = "Aleksei"
    private let passwordUser = "Swiftbook"
    
    // MARK: - Override Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if fieldUserName.text != userName {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter corrent login and password"
            )
        } else if fieldPassword.text != passwordUser {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter corrent login and password"
            )
        return
        }
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = fieldUserName.text ?? "user"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super .touchesBegan(touches, with: event)
            view.endEditing(true)
        }
    
    //MARK: - IB Actions
        
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        guard seque.source is WelcomeViewController else { return }
        self.fieldUserName.text = nil
        self.fieldPassword.text = nil
    }
    
    // MARK: - IB Actions AllertControllers
    
    @IBAction func showAlertUserName(_ sender: UIButton) {
        if sender == foggotUserName {
            showAlert(with: "Oooh?!", and: "Your name is \(userName)")
        } else if sender == foggotPassword {
            showAlert(with: "Oops?!", and: "Your password is \(passwordUser)")
        }
    }
}

// MARK: - UIAlertController

extension LoginViewController {
    
    private func showAlert(with title: String, and message: String) {
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
