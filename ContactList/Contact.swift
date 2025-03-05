//
//  Contact.swift
//  ContactList
//
//  Created by Evgeniy Morozov on 05.03.2025.
//
import Foundation


struct Contact {
    let name: String
    let family: String
    let telephone: String?
    let email: String?
    
    var title: String {
        "\(name) - \(family)"
    }
}

// Функция для генерации случайного номера телефона
func generateRandomPhoneNumber() -> String {
    let phonePrefixes = ["+7", "+8"]
    let prefix = phonePrefixes.randomElement()!
    let randomDigits = Array(repeating: "9", count: 11).joined().shuffled().prefix(11)
    return prefix + randomDigits
}

// Функция для генерации случайного email адреса
func generateRandomEmail() -> String {
    let domains = ["gmail.com", "yandex.ru", "mail.ru"]
    let domain = domains.randomElement()!
    let randomUsername = UUID().uuidString.prefix(8)
    return randomUsername + "@" + domain
}

extension Contact {
    static func getContactList(count: Int) -> [Contact] {
        var contacts = [Contact]()
        
        let firstNames = ["Иван", "Петр", "Алексей", "Елена", "Анна"]
        let lastNames = ["Иванов", "Петров", "Смирнов", "Кузнецова", "Попова"]
        
        for _ in 0..<count {
            let randomName = firstNames.randomElement()!
            let randomFamily = lastNames.randomElement()!
            let randomTelephone = generateRandomPhoneNumber()
            let randomEmail = generateRandomEmail()
            
            let contact = Contact(
                name: randomName,
                family: randomFamily,
                telephone: randomTelephone,
                email: randomEmail
            )
            contacts.append(contact)
        }
        
        return contacts
    }
}


