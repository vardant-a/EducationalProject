//
//  EditProfileViewController.swift
//  EducationalProject
//
//  Created by Алексей on 05.07.2022.
//

import UIKit

class EditProfileViewController: UIViewController {
    @IBOutlet var imageUsers: UIImageView!
    
    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastName: UITextField!
    
    @IBOutlet var ageUsers: UILabel!
    
    @IBOutlet var ageSliders: UISlider!
    
    @IBOutlet var sexIndicator: UISegmentedControl!
    
    var editUsers = Person(
        
        firstName: "Aleksei",
        lastName: "Efimof",
        sex: 1,
        age: 18
    )

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func editAge() {
        ageUsers.text = String(format: "%.0f", ageSliders.value)
    }
    @IBAction func editCancel() {
        dismiss(animated: true)
    }

}
