//
//  AnimeDetailCoordinator.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

final class AnimeDetailCoordinator: Coordinator {
    private let navigator: UINavigationController
    private let animename: String
    private var animeDetailViewController: AnimeDetailViewController?
    
    
    init(navigator: UINavigationController, animename: String) {
        self.navigator = navigator
        self.animename = animename
    }
    
    
    func start() {
        let viewController = AnimeDetailViewController(animeName: animename)
        self.navigator.pushViewController(viewController, animated: true)
        self.animeDetailViewController = viewController
    }
}
