//
//  AnimeListViewController.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

protocol AnimeListViewControllerDelegate: AnyObject {
    func animeListViewControllerDidSelect(_ anime: String)
}

class AnimeListViewController: UIViewController {
    
    weak var delegate: AnimeListViewControllerDelegate?
    
    let animes = [
        "SAO",
        "リコリス",
        "五等分",
        "冴えカノ",
        "エロ漫画先生",
        "だんまち"
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

extension AnimeListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = animes[indexPath.row]
        return cell
    }
}

extension AnimeListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let anime = animes[indexPath.row]
        delegate?.animeListViewControllerDidSelect(anime)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
