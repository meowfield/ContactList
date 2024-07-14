//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Данис Гаязов on 10.7.24..
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet weak var contactEmail: UILabel!
    @IBOutlet weak var contactPhone: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        contactEmail.text = "Email: \(person.email)"
        contactPhone.text = "Phone: \(person.phone)"
        navigationItem.title = person.fullname
    }
}
