//
//  EmployeeFabric.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

struct EmployeesFabric: AbstractEmployeeFabricMethod {
    
    static func createProgrammer(withName name: String, languageType: ProgrammingLanguage) -> Employee {
        let employee = Programmer(with: name)
        employee.programmingLanguage = languageType
        
        return employee
    }
    
    static func createDesigner(withName name: String, designerType: DesignerType) -> Employee {
        let employee = Designer(with: name)
        employee.designerType = designerType
        
        return employee
    }
    
    
}
