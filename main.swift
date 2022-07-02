//
//  main.swift
//  SwiftSandbox
//
//  Created by m4c5on on 24.05.22.
//

import Foundation

let factoryMethod = FactoryMethodBootcamp()
let builder = BuilderBootcamp()
let prototype = PrototypeBootcamp()

/*
 */

let adapter = AdapterBootcamp()
let bridge = BridgeBootcamp()
let composition = CompositeBootcamp()
let decorator = DecoratorBootcamp()

@propertyWrapper struct NonNegative<T: Numeric & Comparable> {
    var value: T

    var wrappedValue: T {
        get { value }

        set {
            if newValue < 0 {
                value = 0
            } else {
                value = newValue
            }
        }
    }

    init(wrappedValue: T) {
        if wrappedValue < 0 {
            self.value = 0
        } else {
            self.value = wrappedValue
        }
    }
}

@propertyWrapper struct UnsignedValue<T: Numeric & Comparable> {
    private var value: T = 0
    
    var wrappedValue: T {
        set { value = newValue; correctValue() }
        get { value }
    }
    
    mutating func correctValue() {
        value = value < 0 ? 0 : value
    }
    
    init(wrappedValue: T) {
        self.value = wrappedValue
        
        correctValue()
    }
    
}

class Game {
    @NonNegative var score: Int = 0
    @UnsignedValue var unsignedScore: Int = 0
}

var game = Game()
game.score = 1
game.score = 0
game.score = -5
game.unsignedScore = 1
game.unsignedScore = 0
game.unsignedScore = -5


struct HashableStruct: Hashable {
    var title: String
    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(title)
//    }
}

class UserClass: Hashable {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    /*
     */
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(Int.random(in: 0...1))
    }
    
    static func == (lhs: UserClass, rhs: UserClass) -> Bool {
        return lhs.name == rhs.name
    }
}

let firstVariable = HashableStruct(title: "first")
print(firstVariable.hashValue.description) // 8037291822402166482

let secondVariable = HashableStruct(title: "first")
print(secondVariable.hashValue.description) // 8037291822402166482

var setStructs = Set<HashableStruct>([firstVariable, secondVariable])
var dictionary = Dictionary<HashableStruct, String>()
dictionary[firstVariable] = firstVariable.title
dictionary[secondVariable] = firstVariable.title

var array: Array<HashableStruct> = [firstVariable, secondVariable]
var value = array.first(where: { $0 == secondVariable })

let structCompareResult = firstVariable == secondVariable
let class1 = UserClass(name: "max")
let class2 = UserClass(name: "max")

let classReferencesCompareResult = class1 === class2
let classHashCompareResult = class1 == class2

var setClasses: Set<UserClass> = Set(minimumCapacity: 2)
setClasses.insert(class1)
setClasses.insert(class2)

print()

/*
 */

protocol NumericProtocol {
    associatedtype Item
    
    func add(item: Item)
    func printSelf(_ self: Self)
    func printType(_ type: Self.Type)
    func printItem(_ item: Item)
    func printItemType(_ itemType: Item.Type)
}

struct NumericStruct: NumericProtocol {
    
    typealias Item = Int
    
    func printSelf(_ self: NumericStruct) {
        print("printSelf: \(self)")
    }
    
    func printType(_ type: NumericStruct.Type) {
        print("printType: \(type)")
    }
    
    func add(item: Int) {
        print("add: \(item)")
    }
    
    func printItem(_ item: Int) {
        print("printItem: \(item)")
    }
    
    func printItemType(_ itemType: Int.Type) {
        print("printItemType: \(itemType)")
    }
    
}

let numeric = NumericStruct()
numeric.printSelf(numeric)
numeric.printType(NumericStruct.self)
print()

//struct DoubleStruct: NumericProtocol {
//    typealias Item = Double
//
//    var value: Item
//
//    func describeItem(item: DoubleStruct) {
//        print("Double: \(value)")
//    }
//}
//
//struct IntStruct: NumericProtocol {
//    typealias Item = Int
//
//    var value: Item
//
//    func describeItem(item: IntStruct) {
//        print("Int: \(value)")
//    }
//}

//let doubleStruct = DoubleStruct(value: 123)
//doubleStruct.describeItem()
//
//let intStruct = DoubleStruct(value: 124.0)
//intStruct.describeItem()
