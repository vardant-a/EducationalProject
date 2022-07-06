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
    
    
    static func getInfoList() -> Person {
        Person(
            firstName: "Aлексей",
            lastName: "Ефимов",
            age: 28,
            info: [
                .photo : "avatar.fpeg",
                .hobbies : "Спорт, IT технологии, прогулки",
                .education : "Магистр Физики (звучит круто!)",
                .pets : "Собака"
            ]
        )
    }
}

enum Info: String {
    case photo = "photo.jpeg"
    case hobbies = "Увлечения"
    case education = "Образование, специальность"
    case pets = "Домашний петомец"
}
