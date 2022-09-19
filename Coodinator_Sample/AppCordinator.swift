//
//  AppCordinator.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

protocol Coordinator {
    func start()
}


final class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
//    private let rootViewController: UITabBarController
    private var userListCoordinator: UserListCoordinator
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.userListCoordinator = UserListCoordinator(navigator: navigationController)
        
//        navigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
//
//        rootViewController = .init()
//        rootViewController.viewControllers = [navigationController]
    }
    
    func start() {
        // ここで初っ端の画面をイニシャライズしている感じ
        userListCoordinator.start()
    }
}
