//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Данис Гаязов on 12.7.24..
//

import UIKit

class TabBarViewController: UITabBarController {
    // MARK: Public Properties
    let contactList = Person.getPersonData()
    
    // MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    // MARK: Private Methods
    private func getData() {
        guard let viewControllers else { return }
        viewControllers.forEach { viewController in
            if let navController = viewController as? UINavigationController,
               let contactListVC = navController.topViewController as? ContactListViewController {
                contactListVC.contactList = contactList
            } else if let navController = viewController as? UINavigationController,
                      let personsListVC = navController.topViewController as? PersonsListViewController {
                personsListVC.contactList = contactList
            }
        }
    }
}
