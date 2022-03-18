//
//  ViewController.swift
//  CoreDataLearning
//
//  Created by Mingyong Zhu on 3/17/22.
//

import UIKit

class ViewController: UIViewController {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    var viewModel = ViewModel()
    let cellID = "contactCellID"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupDataBinding()
        
        tableView.dataSource = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        // Do any additional setup after loading the view.
    }
    
    private func setupUI() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tableView)
        tableView.frame = self.view.bounds
        
    }
    
    private func setupDataBinding() {
        
    }

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = viewModel.contacts[indexPath.row].firstName
        cell.textLabel?.font = UIFont.systemFont(ofSize: 20)
        cell.detailTextLabel?.text = viewModel.contacts[indexPath.row].lastName
        cell.textLabel?.font = UIFont.systemFont(ofSize: 20)
        return cell
    }
    
    
}

