//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Evgeniy Morozov on 05.03.2025.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    @IBOutlet private weak var telephoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(contact.name) \(contact.family)"
    
        telephoneLabel.text = "Phone: \(contact.telephone ?? "нет данных")"
        emailLabel.text = "Email: \(contact.email ??  "нет данных")"
    }
}
