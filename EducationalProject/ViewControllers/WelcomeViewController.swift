//
//  WelcomeViewController.swift
//  EducationalProject
//
//  Created by Алексей on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: - IB Outlets
    
    @IBOutlet var welcomeMessage: UILabel!
    
    //MARK: - Public Properties
    
    var firstName = ""
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = "Welcome, \(firstName)!"
    }
}
