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
    
    private let user = User(
        login: "1",
        password: "1",
        person: Person.getInfoList()
    )
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let navigationVC = viewController as? UINavigationController {
                guard let welcomeVC = navigationVC.topViewController as? WelcomeViewController else { return }
                welcomeVC.user = user.person.firstName
            }
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super .touchesBegan(touches, with: event)
            view.endEditing(true)
        }
    
    //MARK: - IB Actions
        
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        fieldUserName.text = nil
        fieldPassword.text = nil
    }
    
    // MARK: - IB Actions
    
    @IBAction func logInPressed() {
        guard fieldUserName.text == user.login, fieldPassword.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter corrent login and password",
                TextField: fieldPassword
            )
            return
        }
        
        performSegue(withIdentifier: "showViews", sender: self)
    }
    
    @IBAction func showAlertLoginPassword(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oooh?!", message: "Your name is \(user.login)")
        : showAlert(title: "Oops?!", message: "Your password is \(user.password)")
    }
}

// MARK: - UIAlertController

extension LoginViewController {
    
    private func showAlert(title: String, message: String, TextField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .default) { _ in
            TextField?.text = ""
        }
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}
