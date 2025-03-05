//
//  Contact.swift
//  ContactList
//
//  Created by Evgeniy Morozov on 05.03.2025.
//

struct Contact {
    let name: String
    let family: String
    let telephone: String?
    let email: String?
    
    var title: String {
        "\(name) - \(family)"
    }
}
