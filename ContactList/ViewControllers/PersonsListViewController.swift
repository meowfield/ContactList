//
//  PersonsListTableViewController.swift
//  ContactList
//
//  Created by Данис Гаязов on 11.7.24..
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    // MARK: - Public Properties
    var contactList: [Person]!
}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactList[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "personsListCell",
            for: indexPath
        )
        let contact = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.email
            content.image = UIImage(systemName: "envelope")
        } else {
            content.text = contact.phone
            content.image = UIImage(systemName: "phone")
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
}

// MARK: - UITableViewDelegate
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
