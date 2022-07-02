//
//  Bridge.swift
//  SwiftSandbox
//
//  Created by m4c5on on 12.06.22.
//

import Foundation

class BridgeBootcamp {
    
    init() {
        let asianSoupIngredients: [Ingredient] = [Rice(), Mushroom()]
        
        let asianChef = AsianChef()
        let asianKithen = Kitchen(with: asianChef, and: asianSoupIngredients)
        let asianSoup = asianKithen.makeSoup()
        
        let europianSoupIngredients: [Ingredient] = [Potato(), Pork()]
        
        let europianChef = EuropianChef()
        let europianKithen = Kitchen(with: europianChef, and: europianSoupIngredients)
        let europianSoup = europianKithen.makeSoup()
        
        print(asianSoup, europianSoup)
    }
    
}

class Kitchen {
    private var chef: Chef
    private var ingredients: [Ingredient]
    
    init(with chef: Chef, and ingredients: [Ingredient]) {
        self.chef = chef
        self.ingredients = ingredients
    }
    
    func makeSoup() -> Soup {
        return chef.cookSoup(from: ingredients)
    }
}

/*
 MARK: - Chefs
 */

protocol Chef {
    func cookSoup(from ingredients: [Ingredient]) -> Soup
}

/*
 MARK: -
 */

protocol Soup {
    var ingredients: [Ingredient] { get set }
    
    init(with ingridients: [Ingredient])
}

/*
 MARK: -
 */

protocol Ingredient {
    var name: String { get set }
}

class Potato: Ingredient {
    var name: String = "Potato"
}

class Pork: Ingredient {
    var name: String = "Pork"
}

class Rice: Ingredient {
    var name: String = "Rice"
}

class Mushroom: Ingredient {
    var name: String = "Mushroom"
}

/*
 MARK: -
 */

class AsianChef: Chef {
    
    func cookSoup(from ingredients: [Ingredient]) -> Soup {
        let recipe: String = ingredients.compactMap({ $0.name }).joined(separator: ",")
        print("Asian soup: \(recipe)")
        
        return AsianSoup(with: ingredients)
    }
    
}

class EuropianChef: Chef {
    
    func cookSoup(from ingredients: [Ingredient]) -> Soup {
        let recipe: String = ingredients.compactMap({ $0.name }).joined(separator: ",")
        print("Europian soup: \(recipe)")
        
        return EuropianSoup(with: ingredients)
    }
    
}

class AsianSoup: Soup {
    
    var ingredients: [Ingredient]
    
    required init(with ingredients: [Ingredient]) {
        self.ingredients = ingredients
    }
    
}

class EuropianSoup: Soup {
    
    var ingredients: [Ingredient]
    
    required init(with ingredients: [Ingredient]) {
        self.ingredients = ingredients
    }
    
}

