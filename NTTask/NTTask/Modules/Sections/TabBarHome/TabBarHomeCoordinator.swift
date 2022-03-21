//
//  TabBarHomeCoordinator.swift
//  NTTask
//
//  Created by Juan Gomez Martinho Gonzalez on 16/3/22.
//

import Foundation
import UIKit

final class TabBarHomeCoordinator{
    static func view() -> UITabBarController {
        let tbCV = TabBarHomeViewController()
        let listaVC = ListaContactosCoordinator.navigation()
        let customButton = UITabBarItem(title: "Mis Contactos", image: UIImage(named: "TRIFECA_0M"), selectedImage: UIImage(named: "TRIFECA_0M"))
        listaVC.tabBarItem = customButton
        tbCV.viewControllers = [listaVC]
        return tbCV
    }
}
