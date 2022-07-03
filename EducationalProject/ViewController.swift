//
//  ViewController.swift
//  EducationalProject
//
//  Created by Алексей on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    
    @IBOutlet var loginUser: UITextField!
    @IBOutlet var password: UITextField!
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
            message: "Your password is Swiftbook",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAllert(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter corrent login and password",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}

