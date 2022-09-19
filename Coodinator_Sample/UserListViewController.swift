//
//  ViewController.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

protocol ListViewController: AnyObject {
    func listViewControllerDidSelect(_ username: String)
}

class UserListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

