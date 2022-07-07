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
    
    var user: Person!
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = "Welcome, \(user.name)!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let profileVC = segue.destination as? ProfileViewController else { return }
        profileVC.user = user
    }
}
