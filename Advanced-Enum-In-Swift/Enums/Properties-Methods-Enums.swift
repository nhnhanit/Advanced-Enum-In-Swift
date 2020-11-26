//
//  Properties-Methods-Enum.swift
//  Advanced-Enum-In-Swift
//
//  Created by HongNhan on 11/26/20.
//

enum Device {
    case iPad
    case iPhone
    case MacBook
    
    // computed property
    var year: Int {
        switch self {
        case .iPhone:
            return 2007
        case .iPad:
            return 2010
        case .MacBook:
            return 2020
        }
    }
    
    // method
    func introduced() -> String {
        switch self {
        case .iPhone:
            return "\(self) was introduced 2007"
        case .iPad:
            return "\(self) was introduced 2010"
        default :
            return "\(self) as introduced 2020"
        }
    }
    
    // static method
    static func getDevice(name: String) -> Device? {
        switch name {
        case "iPhone":
            return .iPhone
        case "iPad":
            return .iPad
        default:
            return nil
        }
    }
}
