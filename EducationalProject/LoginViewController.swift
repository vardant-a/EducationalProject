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
    private let passwordUser = "Swift"
    
    // MARK: - Override Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if fieldUserName.text != userName || fieldPassword.text != passwordUser {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter corrent login and password"
            )
            self.fieldUserName.text = nil
            self.fieldPassword.text = nil
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
        switch sender {
        case foggotUserName:
            showAlert(title: "Oooh?!", message: "Your name is \(userName)")
        default:
            showAlert(title: "Oops?!", message: "Your password is \(passwordUser)")
        }
    }
}

// MARK: - UIAlertController

extension LoginViewController {
    
    private func showAlert(title: String, message: String) {
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
