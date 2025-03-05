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
    }


}


// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        let track = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = track.family
        content.secondaryText = track.name
        content.image = UIImage(named: track.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let track = contactList.remove(at: sourceIndexPath.row)
        contactList.insert(track, at: destinationIndexPath.row)
    }
}
