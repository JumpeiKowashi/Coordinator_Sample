//
//  ViewController.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

protocol UserListViewControllerDelegate: AnyObject {
    func userListViewControllerDidSelect(_ username: String)
}

class UserListViewController: UIViewController {
    
    weak var delegate: UserListViewControllerDelegate?
    
    let users = [
        "キリト",
        "アスナ",
        "リーファ",
        "シノン",
        "ユウキ",
        "ユージオ",
        "アリス",
        "シリカ",
        "リズベット",
        "キリト",
        "アスナ",
        "リーファ",
        "シノン",
        "ユウキ",
        "ユージオ",
        "アリス",
        "シリカ",
        "リズベット",
        "キリト",
        "アスナ",
        "リーファ",
        "シノン",
        "ユウキ",
        "ユージオ",
        "アリス",
        "シリカ",
        "リズベット"
    ]

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}

extension UserListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = users[indexPath.row]
        return cell
    }
}

extension UserListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = users[indexPath.row]
        delegate?.userListViewControllerDidSelect(user)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
