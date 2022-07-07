//
//  User.swift
//  EducationalProject
//
//  Created by Алексей on 06.07.2022.
//

struct User {
    
    let login: String
    let password: String
    let person: Person
}

struct Person {
    var name: String
    var age: Int
    var photo: String
    var cityLife: String
    var info: [Info : String]
    var littleAboutMyself: String
    
    static func getInfoList() -> Person {
        Person(
            name: "Aleksei",
            age: 28,
            photo: "photo",
            cityLife: "Moskow",
            info: [
                .hobbies : "Sports, IT technologies, walking, swimming, dog training",
                .education : "Master in Physics",
                .pets : "Doberman Ray"
            ],
            littleAboutMyself: "I am a 3rd year graduate student of Tomsk State University, at the Department of Optics and Spectroscopy. A physicist by education, I am engaged in research work: from setting up and implementing an experiment, to writing articles and speaking at conferences."
        )
    }
}

enum Info: String {
    case hobbies = "hobbies"
    case education = "Education, specialty"
    case pets = "Home pet"
}
