//
//  NestEnum.swift
//  Advanced-Enum-In-Swift
//
//  Created by HongNhan on 11/26/20.
//

enum Animal {
    case fourLegs
    case twoLegs
    
    enum Dog {
        case chihuahua
        case fox
    }
    
    enum Bird {
        case penguin
        case ostrich
    }
}

extension Animal {

    var description: String {
        switch self {
        case .fourLegs:
            return "Động vật 4 chân"
        case .twoLegs:
            return "Động vật 2 chân"
        }
    }
    
    mutating func swapAnimal() {
        switch self {
        case .fourLegs:
            self = .twoLegs
        case .twoLegs:
            self = .fourLegs
        }
    }
}
