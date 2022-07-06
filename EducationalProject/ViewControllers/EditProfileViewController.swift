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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageUsers.image = UIImage(named: "avatar")
    }
    
//    @IBAction func editAge() {
//        ageUsers.text = String(format: "%.0f", ageSliders.value)
//    }
    
    @IBAction func editCancel() {
        dismiss(animated: true)
    }

}
