//
//  Employee.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

enum EmployeeRole {
    case designer, programmer
}

enum DesignerType {
    case undefine, ui, graphic
}

enum ProgrammingLanguage {
    case undefine, swift, kotlin
}

/*
 MARK: - Employee Protocols
 */

protocol Employee {
    
    var name: String { get set }
    var role: EmployeeRole { get set }
    
    init(with name: String) // fabric method
}

protocol ProgrammerSpecification: Employee {
    var programmingLanguage: ProgrammingLanguage { get set }
}

protocol DesignerSpecification: Employee {
    var designerType: DesignerType { get set }
}
