//
//  ViewController.swift
//  ContactList
//
//  Created by Данис Гаязов on 9.7.24..
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    // MARK: - Public Properties
    var contactList: [Person] = []
    
    // MARK: - lifecycle Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        contactDetailsVC.person = contactList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullname
        cell.contentConfiguration = content
        return cell
    }
}


