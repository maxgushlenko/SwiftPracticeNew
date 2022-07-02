//
//  FactoryMethod.swift
//  SwiftSandbox
//
//  Created by m4c5on on 8.06.22.
//

import Foundation

class FactoryMethodBootcamp {
    
    init() {
        
        let employee: Employee = Programmer.init(with: "Steve Jobs")
        
    }
    
}

enum EmployeeRole {
    case designer, programmer
}

protocol Employee {
    var name: String { get set }
    var role: EmployeeRole { get set }
    
    init(with name: String)
}

class Programmer: Employee {
    
    var role: EmployeeRole = .programmer
    var name: String
    
    required init(with name: String) {
        self.name = name
    }
    
}

class Designer: Employee {
    
    var role: EmployeeRole = .designer
    var name: String
    
    required init(with name: String) {
        self.name = name
    }
    
}


