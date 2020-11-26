//
//  CustomInitEnum.swift
//  Advanced-Enum-In-Swift
//
//  Created by HongNhan on 11/26/20.
//

enum IntCategory {
    case small
    case medium
    case big
    case weird

    init(number: Int) {
        switch number {
            case 0..<1000 :
                self = .small
            case 1000..<100000:
                self = .medium
            case 100000..<1000000:
                self = .big
            default:
                self = .weird
        }
    }
}
