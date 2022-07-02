//
//  AdapterBootcamp.swift
//  SwiftSandbox
//
//  Created by m4c5on on 12.06.22.
//

import Foundation

class AdapterBootcamp {
    
    init() {
        let europianPlug = EuropianPlug()
        let americanPlug = AmericanPlug()
        
        let socket = AmericanSocket()
        socket.set(plug: americanPlug)
        
        let adapter = AmericanPlugAdapter(with: europianPlug)
        socket.set(plug: adapter)
    }
    
}

class AmericanSocket {
    func set(plug: AmericanPlug) {}
}

protocol Plug {
    func insert()
}

class EuropianPlug: Plug {
    func insert() {}
}

class AmericanPlug: Plug {
    func insert() {}
}

class AmericanPlugAdapter: AmericanPlug {
    
    private var europianPlug: EuropianPlug
    
    init(with plug: EuropianPlug) {
        self.europianPlug = plug
    }
    
    override func insert() {
        // adapts europian to american
    }
    
}
