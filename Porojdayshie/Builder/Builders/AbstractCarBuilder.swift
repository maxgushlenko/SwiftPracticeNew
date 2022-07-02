//
//  AbstractCarBuilder.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

protocol AbstractCarBuilder {
    func set(engine: AbstractEngine)
    func set(body: AbstractCarBody)
    func set(mark: String)
    
    func getResult() -> AbstractCar
    func reset()
}
