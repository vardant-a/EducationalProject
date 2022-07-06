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
    
    var user = Person(
        firstName: "",
        lastName: "",
        age: 18,
        info: [.pets : "Доберман"],
        littleAboutMyself: """
            I am a 3rd year graduate student of Tomsk State University,
            at the Department of Optics and Spectroscopy. A physicist by
            education, I am engaged in research work: from setting up and
            implementing an experiment, to writing articles and speaking at
            conferences.
        """
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.image = UIImage(named: "")
        userInfo.text = "My name is \(user.firstName) \(user.lastName). I`m \(user.age) years old"
        aboutMyself.text = user.littleAboutMyself
    }
}
