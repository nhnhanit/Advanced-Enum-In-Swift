//
//  GenericEnums.swift
//  Advanced-Enum-In-Swift
//
//  Created by HongNhan on 11/26/20.
//

enum Information<T1, T2> {
    case name(T1)
    case website(T1)
    case age(T2)
}
