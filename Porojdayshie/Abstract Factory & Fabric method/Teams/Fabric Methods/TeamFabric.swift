//
//  TechnicalTeamFabric.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

struct TeamFabric: AbstractTeamFabric {
    
    static func createTechnicalTeam(with employeeFabric: AbstractEmployeeFabricMethod.Type) -> Team {
        
        let programmerMax = employeeFabric.createProgrammer(withName: "Max", languageType: .swift)
        let programmerKolya = employeeFabric.createProgrammer(withName: "Kolya", languageType: .kotlin)
        
        return TechnicalTeam(with: [programmerMax, programmerKolya])
    }
    
    static func createDesignerTeam(with employeeFabric: AbstractEmployeeFabricMethod.Type) -> Team {
        let designerVova = employeeFabric.createDesigner(withName: "Vova", designerType: .ui)
        let designerOlya = employeeFabric.createDesigner(withName: "Olya", designerType: .graphic)
        
        return DesignerTeam(with: [designerVova, designerOlya])
    }
    
}
