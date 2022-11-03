//
//  MainTabBarController.swift
//  Coodinator_Sample
//
//  Created by Jumpei Kowashi on 2022/09/19.
//

import UIKit

protocol MainTabBarControllerDelegate: AnyObject {
    func update()
}

class MainTabBarController: UITabBarController {
    
    weak var tabDelegate: UITabBarControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTab()
    }
    
    func setupTab() {
        
    }
}
