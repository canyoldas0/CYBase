//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

import Foundation

public class CYUtil { }

public extension CYUtil {
    
    class func randomInt(min: Int, max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max + 1)) + UInt32(min))
    }
}
