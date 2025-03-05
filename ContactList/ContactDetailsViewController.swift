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
//        if let contact = contact {
//            if let telephone = contact.telephone {
//                telephoneLabel.text = telephone
//            }
//            if let email = contact.email {
//                emailLabel.text = email
//            }
//        }
        telephoneLabel.text = contact.telephone
        emailLabel.text = contact.email
    }
}
