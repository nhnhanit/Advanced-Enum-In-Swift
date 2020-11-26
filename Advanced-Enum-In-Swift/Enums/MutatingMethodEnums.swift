//
//  MutatingMethodEnum.swift
//  Advanced-Enum-In-Swift
//
//  Created by HongNhan on 11/26/20.
//

enum FanSpeedSwitch {
    case off
    case low
    case high
    
    mutating func next() {
        switch self {
            case .off:
                self = .low
            case .low:
                self = .high
            case .high:
            self = .off
        }
    }
}
