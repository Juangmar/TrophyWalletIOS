//
//  ListaContactosCoordinator.swift
//  NTTask
//
//  Created by Juan Gomez Martinho Gonzalez on 17/3/22.
//

import Foundation
import UIKit

final class ListaContactosCoordinator{
    static func navigation() -> UINavigationController {
        UINavigationController(rootViewController: view())
    }
    static func view() -> ListaContactosViewController{
        ListaContactosViewController()
    }
}
