//
//  Programmer.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

class Programmer: ProgrammerSpecification {
    
    var role: EmployeeRole = .programmer
    var name: String
    
    var programmingLanguage: ProgrammingLanguage = .undefine
    
    required init(with name: String) {
        self.name = name
    }
    
    convenience init(with name: String, programmingLanguage: ProgrammingLanguage) {
        self.init(with: name)
        
        self.programmingLanguage = programmingLanguage
    }
    
}
