//
//  EmployeeFabric.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

protocol AbstractEmployeeFabricMethod {
    static func createProgrammer(withName name: String, languageType: ProgrammingLanguage) -> Employee
    static func createDesigner(withName name: String, designerType: DesignerType) -> Employee
}
