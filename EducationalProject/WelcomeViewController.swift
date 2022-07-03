//
//  WelcomeViewController.swift
//  EducationalProject
//
//  Created by Алексей on 03.07.2022.
//

import UIKit

class WelcomeViewController: ViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var welcomeMessage: UILabel!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IB Actions
    @IBAction func logOut() {
        dismiss(animated: true)
    }
}
