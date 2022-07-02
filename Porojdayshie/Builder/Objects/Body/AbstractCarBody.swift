//
//  AbstractCarBody.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

enum CarBodyType {
    case jeep, coupe
}

protocol AbstractCarBody {
    var type: CarBodyType { get set }
    var color: String { get set }
}
