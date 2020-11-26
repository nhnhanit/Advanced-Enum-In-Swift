//
//  ContainingEnum.swift
//  Advanced-Enum-In-Swift
//
//  Created by HongNhan on 11/26/20.
//

struct Character {
    enum CharacterType {
        case thief
        case warrior
    }
    enum Weapon {
        case bow
        case sword
        case dagger
        case gun
    }
    let type: CharacterType
    let weapon: Weapon
}
