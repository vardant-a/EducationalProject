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
    
    static func getUserData() -> User {
        User(
            login: "admin",
            password: "admin",
            person: Person.getInfoList()
        )
    }
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
                .hobbie : "Sports, IT technologies, walking, swimming, dog training",
                .education : "3rd year PhD student, Optics and Spectroscopy",
                .pets : "Doberman Ray"
            ],
            littleAboutMyself: "I am a 3rd year graduate student of Tomsk State University, at the Department of Optics and Spectroscopy. A physicist by education, I am engaged in research work: from setting up and implementing an experiment, to writing articles and speaking at conferences."
        )
    }
}

enum Info {
    case hobbie
    case education
    case pets
}
