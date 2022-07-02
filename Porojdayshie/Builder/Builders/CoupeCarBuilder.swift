//
//  LightweightCarBuilder.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

class CoupeCarBuilder: AbstractCarBuilder {
    
    private var car: Car = Car()
    
    /*
     MARK: -
     */
    
    func set(engine: AbstractEngine) {
        car.engine = engine
    }
    
    func set(body: AbstractCarBody) {
        car.body = body
    }
    
    func set(mark: String) {
        car.mark = mark
    }
    
    func getResult() -> AbstractCar {
        let readyCar = car
        reset()
        
        return readyCar
    }
    
    func reset() {
        car = Car()
    }
    
}
