//
//  AnimeListCoordinator.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

final class AnimeListCoordinator: Coordinator {
    
    private let navigator: UINavigationController
    private var animeListViewController: AnimeListViewController?
    private var animeDetailCoordinator: AnimeDetailCoordinator?
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func start() {
        let viewController = AnimeListViewController()
        viewController.delegate = self
        /// MVPのときは、ここでpresenterのイニシャライズもする
        self.animeListViewController = viewController
        navigator.pushViewController(viewController, animated: true)
    }
}

extension AnimeListCoordinator: AnimeListViewControllerDelegate {
    func animeListViewControllerDidSelect(_ anime: String) {
        let animeDetailCoordinator = AnimeDetailCoordinator(navigator: self.navigator, animename: anime)
        animeDetailCoordinator.start()
        self.animeDetailCoordinator = animeDetailCoordinator
    }
}
