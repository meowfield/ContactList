//
//  Person.swift
//  ContactList
//
//  Created by Данис Гаязов on 9.7.24..
//

struct Person {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }

    static func getPersonData() -> [Person] {
        let names = DataStore().names.shuffled()
        let surnames = DataStore().surnames.shuffled()
        let phones = DataStore().phones.shuffled()
        let emails = DataStore().emails.shuffled()
        
        var persons: [Person] = []
        
        for (index, name) in names.enumerated() {
            let surname = index < surnames.count ? surnames[index] : "Unknown"
            let phone = index < phones.count ? phones[index] : "N/A"
            let email = index < emails.count ? emails[index] : "N/A"
            persons.append(Person(name: name, surname: surname, phone: phone, email: email))
        }
        return persons
    }
}
