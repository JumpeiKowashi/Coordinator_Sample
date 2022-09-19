//
//  UserListCordinator.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

final class UserListCoordinator: Coordinator {
    
    private let navigator: UINavigationController
    private var userListViewController: UserListViewController?
    private var userDetailCoordinator: UserDetailCoordinator?
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func start() {
        let viewController = UserListViewController()
        viewController.delegate = self
        /// MVPのときは、ここでpresenterのイニシャライズもする
        self.userListViewController = viewController
        navigator.pushViewController(viewController, animated: true)
    }
}

extension UserListCoordinator: UserListViewControllerDelegate {
    func userListViewControllerDidSelect(_ username: String) {
        let userDetailCoordinator = UserDetailCoordinator(navigator: self.navigator, username: username)
        userDetailCoordinator.start()
        self.userDetailCoordinator = userDetailCoordinator
    }
}
