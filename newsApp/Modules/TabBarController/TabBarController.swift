//
//  TabBarController.swift
//  newsApp
//
//  Created by Егор Иванов on 12.09.2023.
//

import UIKit

enum TabBarController{
    static func createTabBar() -> UITabBarController {
        let tabBarController = UITabBarController()

        let firstTabController = UINavigationController(rootViewController: FirstViewController())
        firstTabController.tabBarItem = UITabBarItem(title: "News", image: UIImage(systemName: "newspaper"), tag: 0)

        let secondTabController = UINavigationController(rootViewController: SecondViewController())
        secondTabController.tabBarItem = UITabBarItem(title: "Liked News", image: UIImage(systemName: "bookmark.fill"), tag: 1)

        let thirdTabController = UINavigationController(rootViewController: ThirdViewController())
        thirdTabController.tabBarItem = UITabBarItem(title: "Options", image: UIImage(systemName: "gear"), tag: 2)

        tabBarController.setViewControllers([firstTabController, secondTabController, thirdTabController], animated: true)

        return tabBarController
    }
}
