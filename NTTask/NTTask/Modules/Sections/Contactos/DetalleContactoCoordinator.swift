//
//  DetalleContactoCoordinator.swift
//  NTTask
//
//  Created by Juan Gomez Martinho Gonzalez on 17/3/22.
//

import Foundation

final class DetalleContactoCoordinator {
    static func view(dto: DetalleContactoCoordinatorDTO? = nil) -> DetalleContactoViewController {
        let vc = DetalleContactoViewController()
        vc.modelData = dto?.modelData
        return vc
    }
}

struct DetalleContactoCoordinatorDTO {
    var modelData: ArrayContact?
}
