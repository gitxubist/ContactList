//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Evgeniy Morozov on 05.03.2025.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var contactList = Contact.getContactList(count: 42)

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let contactDetailsVC = segue.destination as? ContactDetailsViewController
        contactDetailsVC?.contact = contactList[indexPath.row]
    }

}


// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.family + " " + contact.name
        content.image = UIImage(named: String(Int.random(in: 1...42)) + ".png")
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let track = contactList.remove(at: sourceIndexPath.row)
        contactList.insert(track, at: destinationIndexPath.row)
    }
    
}
