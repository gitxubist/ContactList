//
//  Contact.swift
//  ContactList
//
//  Created by Evgeniy Morozov on 05.03.2025.
//


struct Contact {
    let name: String
    let family: String
    
    var title: String {
        "\(name) - \(family)"
    }
}


extension Contact {
    static func getContactList(count: Int) -> [Contact] {
        var contacts = [Contact]()
        
        let firstNames = ["Иван", "Петр", "Алексей", "Елена", "Анна"]
        let lastNames = ["Иванов", "Петров", "Смирнов", "Кузнецова", "Попова"]
        
        for _ in 0..<count {
            let randomName = firstNames.randomElement()!
            let randomFamily = lastNames.randomElement()!
            
            let contact = Contact(name: randomName, family: randomFamily)
            contacts.append(contact)
        }
        
        return contacts
    }
}


