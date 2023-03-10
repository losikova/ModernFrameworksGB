//
//  TabBarController.swift
//  Maps
//
//  Created by Анастасия Лосикова on 2/9/23.
//

import UIKit

class TabBarController: UITabBarController, NibNameLoadable {

    init() {
        super.init(nibName: TabBarController.nibName, bundle: Bundle.main)
        viewControllers = createViewControllers()

        tabBar.backgroundColor = .tabBarBackgroundColor
        tabBar.tintColor = .tabBarTintColor
    }
    @available(*, unavailable) required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private methods

    // MARK: Configure

    private func createViewControllers() -> [UIViewController] {
        var controllers: [UIViewController] = [UIViewController]()

        // Map tab

        let mapViewController = MapViewController()
        let mapVCTabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "map"),
            selectedImage: UIImage(systemName: "map.fill")
        )
        mapViewController.tabBarItem = mapVCTabBarItem

        let mapNavigationController = UINavigationController(
            rootViewController: mapViewController
        )
        controllers.append(mapNavigationController)

        // User tab

        let userViewController = UserViewController()
        let userVCTabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "person.crop.circle"),
            selectedImage: UIImage(systemName: "person.crop.circle.fill")
        )
        userViewController.tabBarItem = userVCTabBarItem

        let userNavigationController = UINavigationController(
            rootViewController: userViewController
        )
        controllers.append(userNavigationController)

        return controllers
    }

}
