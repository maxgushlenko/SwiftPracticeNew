//
//  FactoryMethod.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

class FactoryMethodBootcamp {
    
    init() {
        
        let designersTeam = TeamFabric.createDesignerTeam(with: EmployeesFabric.self)
        let programmersTeam = TeamFabric.createTechnicalTeam(with: EmployeesFabric.self)
        print(designersTeam, programmersTeam)
        
    }
    
}








