//
//  TabBarController.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

//Link to Website Ref: https://medium.com/ios-os-x-development/programmatically-creating-uitabbarcontroller-in-swift-e957cd35cfc4

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstViewController = BestSellerViewController()
        
        firstViewController.tabBarItem = UITabBarItem(title: "Best Seller", image: UIImage(named: "icons8-best-seller-filled-24"), tag: 0)
        firstViewController.title = "NYT Best Seller"
        BestSellerViewController().title = "NYT Best Seller"
        
        let secondViewController = FavoritesViewController()
        
        secondViewController.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(named: "icons8-heart-filled-24"), tag: 1)
        firstViewController.title = "Favorites"
        
        let ThirdViewController = SettingsViewController()
        
        ThirdViewController.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(named: "icons8-services-filled-24"), tag: 2)
        firstViewController.title = "Settings"
        
        let tabBarList = [UINavigationController(rootViewController: firstViewController),
                          UINavigationController(rootViewController: secondViewController),
                          UINavigationController(rootViewController: ThirdViewController)]
        
        viewControllers = tabBarList
        
    }
    

    
    

}
