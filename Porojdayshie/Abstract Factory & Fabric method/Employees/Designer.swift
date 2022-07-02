//
//  Designer.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

class Designer: DesignerSpecification {
    
    var role: EmployeeRole = .designer
    var name: String
    
    var designerType: DesignerType = .undefine
    
    required init(with name: String) {
        self.name = name
    }
    
    convenience init(with name: String, type: DesignerType) {
        self.init(with: name)
        
        self.designerType = type
    }
    
}
