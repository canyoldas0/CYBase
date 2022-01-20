//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

import Foundation

public protocol CYValueProtocol {
    associatedtype Value
    var value: Value { get }
}
