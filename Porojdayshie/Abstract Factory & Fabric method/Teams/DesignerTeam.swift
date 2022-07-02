//
//  DesignerTeam.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

class DesignerTeam: Team {
    var employees: [Employee]
    var type: TeamType = .graphic
    
    required init(with employees: [Employee]) {
        self.employees = employees
    }
}
