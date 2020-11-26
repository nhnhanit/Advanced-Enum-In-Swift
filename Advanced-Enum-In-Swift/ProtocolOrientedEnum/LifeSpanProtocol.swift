//
//  LifeSpan.swift
//  Advanced-Enum-In-Swift
//
//  Created by HongNhan on 11/26/20.
//

protocol LifeSpan {
    var numberOfHearts: Int { get }
    
    // mutating func để thay đổi giá trị của biến trong struct, enum
    mutating func getAttacked() // heart -1
    mutating func increaseHeart() // heart +1
}
