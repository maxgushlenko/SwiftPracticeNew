//
//  TechnicalTeam.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

class TechnicalTeam: Team {
    
    var employees: [Employee]
    var type: TeamType = .technical
    
    required init(with employees: [Employee]) {
        self.employees = employees
    }
    
}
