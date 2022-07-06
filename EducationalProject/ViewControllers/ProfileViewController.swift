//
//  ProfileViewController.swift
//  EducationalProject
//
//  Created by Алексей on 05.07.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userInfo: UILabel!
    @IBOutlet var aboutMyself: UILabel!
    
    let alex = Person(
        firstName: "Картошка",
        lastName: "Пельмешка",
        age: 18,
        info: [.pets : "Доберман"],
        littleAboutMyself: """
            I am a 3rd year graduate student of Tomsk State University,
            at the Department of Optics and Spectroscopy.
        """
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.image = UIImage(named: "Lex")
        userInfo.text = "My name is \(alex.firstName) \(alex.lastName). I`m \(alex.age) years old"
        aboutMyself.text = alex.littleAboutMyself
    }
}
