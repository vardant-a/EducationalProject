//
//  ResumeViewController.swift
//  EducationalProject
//
//  Created by Алексей on 05.07.2022.
//

import UIKit

class ResumeViewController: UIViewController {
    
    @IBOutlet var education: UILabel!
    @IBOutlet var hobbies: UILabel!
    @IBOutlet var homePet: UILabel!
    
    var user: [Info : String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for keyOfElement in user.keys {
            switch keyOfElement {
            case .education:
                education.text = user[keyOfElement]
            case .hobbie:
                hobbies.text = user[keyOfElement]
            case .pets:
                homePet.text = user[keyOfElement]
            }
        }
    }
    
    @IBAction func singOut() {
        dismiss(animated: true)
    }
}
