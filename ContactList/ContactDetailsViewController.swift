//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Evgeniy Morozov on 05.03.2025.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        telephoneLabel.text = contact.telephone
        emailLabel.text = contact.email
    }
}
