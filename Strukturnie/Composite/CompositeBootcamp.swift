//
//  CompositeBootcamp.swift
//  SwiftSandbox
//
//  Created by m4c5on on 12.06.22.
//

import Foundation

class CompositeBootcamp {
    
    init() {
        
        let tree = Composition(id: "0")
        
        let branch1 = Composition(id: "1")
        let leaf1 = Child(id: "1")
        let leaf2 = Child(id: "2")
        
        branch1.add(leaf1)
        branch1.add(leaf2)
        
        let branch2 = Composition(id: "2")
        let leaf3 = Child(id: "3")
        let leaf4 = Child(id: "4")
        
        branch2.add(leaf3)
        branch2.add(leaf4)
        
        tree.add(branch1)
        tree.add(branch2)
        
        tree.operation()
    }
    
}


protocol Component {
    
    var id: String { get }
    
    var parent: Component? { get set }
    var isComposition: Bool { get }
    
    init(id: String)
    
    func add(_ component: Component)
    func remove(_ component: Component)
    func operation()
    
}

extension Component {
    
    var isComposition: Bool {
        return false
    }
    
    func add(_ component: Component) {}
    func remove(_ component: Component) {}
    
}

class Composition: Component {
    var id: String
    
    var parent: Component?
    
    private var children: [Component] = []
    
    required init(id: String) {
        self.id = id
    }
    
    func add(_ component: Component) {
        children.append(component)
    }
    
    func remove(_ component: Component) {
        // remove
    }
    
    func operation() {
        print("parent \(id)")
        
        children.forEach({ $0.operation() })
    }
    
}

class Child: Component {
    var id: String
    
    var parent: Component?
    
    required init(id: String) {
        self.id = id
    }
    
    func operation() {
        print("child \(id)")
    }
}


