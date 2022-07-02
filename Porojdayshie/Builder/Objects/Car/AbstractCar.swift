//
//  Car.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

protocol AbstractCar {
    var engine: AbstractEngine! { get set }
    var body: AbstractCarBody! { get set }
    var mark: String! { get set }
}
