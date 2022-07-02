//
//  Engine.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

enum EngineType {
    case petrol, diesel
}

protocol AbstractEngine {
    var volume: Double { get set }
    var type: EngineType { get set }
}
