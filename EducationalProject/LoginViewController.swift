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
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = self.fieldUserName.text ?? "user"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super .touchesBegan(touches, with: event)
            view.endEditing(true)
        }
    
    //MARK: - IB Actions
    
    @IBAction func singInAttempt(_ sender: Any) {
        if self.fieldUserName.text != userName || self.fieldPassword.text != passwordUser { showAllertAuthorizationError() }
    }
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        guard seque.source is WelcomeViewController else { return }
        self.fieldUserName.text = nil
        self.fieldPassword.text = nil
    }
    
    // MARK: - IB Actions AllertControllers
    
    @IBAction func showAllertUserName(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "Oops?",
            message: "Your name is Aleksei",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAllertUserPassword(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "Oops?",
            message: "Your password is Swift",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Private Methods
    
    private func showAllertAuthorizationError() {
        let authorizationError = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter corrent login and password",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        authorizationError.addAction(okButton)
        present(authorizationError, animated: true, completion: nil)
    }
}
