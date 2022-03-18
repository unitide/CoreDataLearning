//
//  ViewModel.swift
//  CoreDataLearning
//
//  Created by Mingyong Zhu on 3/17/22.
//

import UIKit

class ViewModel {
    var contacts = [Contact]()
    
    init() {
        setupInitialContacts()
    }
    
    private func setupInitialContacts(){
        self.contacts.append(Contact(firstName: "Thomas", lastName: "Zhu"))
        self.contacts.append(Contact(firstName: "Tom", lastName: "Cehe"))
        self.contacts.append(Contact(firstName: "John", lastName: "Jiang"))
        self.contacts.append(Contact(firstName: "James", lastName: "Spring"))
        self.contacts.append(Contact(firstName: "Dakota", lastName: "Chen"))
        self.contacts.append(Contact(firstName: "Rachell", lastName: "Cheng"))
        self.contacts.append(Contact(firstName: "Hugo", lastName: "Boss"))
        self.contacts.append(Contact(firstName: "Joe", lastName: "Wang"))
        self.contacts.append(Contact(firstName: "Rornald", lastName: "Li"))
        self.contacts.append(Contact(firstName: "Jenniefer", lastName: "Liu"))
        self.contacts.append(Contact(firstName: "Jean", lastName: "Wu"))
        self.contacts.append(Contact(firstName: "Joy", lastName: "Huang"))
        self.contacts.append(Contact(firstName: "Dan", lastName: "Song"))
        self.contacts.append(Contact(firstName: "Venisa", lastName: "Bai"))
        self.contacts.append(Contact(firstName: "White", lastName: "Wong"))
        self.contacts.append(Contact(firstName: "Hong", lastName: "Su"))
        self.contacts.append(Contact(firstName: "Biden", lastName: "Qian"))
    }
}
