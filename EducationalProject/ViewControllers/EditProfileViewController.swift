//
//  EditProfileViewController.swift
//  EducationalProject
//
//  Created by Алексей on 05.07.2022.
//

import UIKit

class EditProfileViewController: UIViewController {
    @IBOutlet var imageUsers: UIImageView!
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    
    @IBOutlet var ageUsers: UILabel!
    
    @IBOutlet var ageSliders: UISlider!
    
    @IBOutlet var sexIndicator: UISegmentedControl!
    
    var firstName: String!
    var lastName: String!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        imageUsers.image = UIImage(named: "avatar")
    }
    
    @IBAction func editAge() {
        ageUsers.text = String(format: "%.0f", ageSliders.value)
        firstNameTextField.text = firstName
        lastNameTextField.text = lastName
    }
    
    @IBAction func editCancel() {
        dismiss(animated: true)
    }

}
