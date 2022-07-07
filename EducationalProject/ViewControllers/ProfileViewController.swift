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
    
    var user: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.image = UIImage(named: user.photo)
        userImage.layer.cornerRadius = 20
        userInfo.text = "My name is \(user.name). I`m \(user.age) years old. I live in the city \(user.cityLife)"
        aboutMyself.text = user.littleAboutMyself
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resumeVC = segue.destination as? ResumeViewController else { return }
        resumeVC.user = Person.getInfoList().info
    }
}
