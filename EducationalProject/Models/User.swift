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
    
    var firstName: String
    var lastName: String
    var age: Int
    var info: [Info : String]
    var littleAboutMyself: String
    
    static func getInfoList() -> Person {
        Person(
            firstName: "Aleksei",
            lastName: "Lokhin",
            age: 28,
            info: [
                .photo : "Lex",
                .hobbies : "Спорт, IT технологии, прогулки",
                .education : "Магистр Физики",
                .pets : "Собака"
            ],
            littleAboutMyself: "About Myself"
        )
    }
}

enum Info: String {
    case photo = "photo.jpeg"
    case hobbies = "hobbies"
    case education = "Education, specialty"
    case pets = "Домашний петомец"
}
