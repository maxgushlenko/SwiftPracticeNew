//
//  TeamFabric.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

protocol AbstractTeamFabric {
    static func createTechnicalTeam(with employeeFabric: AbstractEmployeeFabricMethod.Type) -> Team
    static func createDesignerTeam(with employeeFabric: AbstractEmployeeFabricMethod.Type) -> Team
}
