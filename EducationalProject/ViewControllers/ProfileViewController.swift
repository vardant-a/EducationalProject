//
//  ProfileViewController.swift
//  EducationalProject
//
//  Created by Алексей on 05.07.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var testName: UILabel!
    @IBOutlet var aboutMyself: UILabel!
    
    var firstName = ""
    var lastName = ""
    var age = 18
    var littleAboutMyself = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testName.text = "Your name is \(firstName)\(lastName). You are \(age) years old"
        aboutMyself.text = littleAboutMyself
    }
}
