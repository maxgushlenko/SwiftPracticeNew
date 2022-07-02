//
//  Director.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

class Director {
    
    private var builder: AbstractCarBuilder?
    
    private func update(builder: AbstractCarBuilder) {
        self.builder = builder
    }
    
    /*
     MARK: -
     */
    
    func createHummer() -> Jeep {
        update(builder: JeepCarBuilder())
        
        builder?.set(body: Body(type: .jeep, color: "black"))
        builder?.set(engine: Engine(type: .diesel, volume: 6.5))
        builder?.set(mark: "Hummer")
        
        let car = builder?.getResult() as! Jeep
        
        builder?.reset()
        
        return car
    }

    func createPorche() -> Car {
        update(builder: CoupeCarBuilder())
        
        builder?.set(body: Body(type: .coupe, color: "red"))
        builder?.set(engine: Engine(type: .petrol, volume: 3.5))
        builder?.set(mark: "Porshe")
        
        let car = builder?.getResult() as! Car
        
        builder?.reset()
        
        return car
    }
    
}
