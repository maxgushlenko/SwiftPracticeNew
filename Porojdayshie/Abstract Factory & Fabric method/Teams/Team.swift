//
//  Team.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

enum TeamType {
    case technical, graphic
}

protocol Team {
    var employees: [Employee] { get set }
    var type: TeamType { get set }
    
    init(with employees: [Employee])
}
