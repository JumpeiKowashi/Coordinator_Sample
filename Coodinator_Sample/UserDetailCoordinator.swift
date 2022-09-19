//
//  UserDetailCoordinator.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

final class UserDetailCoordinator: Coordinator {
    private let navigator: UINavigationController
    private let username: String
    private var repoDetailViewController: UserDetailViewController?
    
    
    init(navigator: UINavigationController, username: String) {
        self.navigator = navigator
        self.username = username
    }
    
    
    func start() {
        let viewController = UserDetailViewController(username: username)
        self.navigator.pushViewController(viewController, animated: true)
        self.repoDetailViewController = viewController
    }
}
