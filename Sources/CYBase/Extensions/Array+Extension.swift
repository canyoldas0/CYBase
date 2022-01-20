//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

import Foundation

public extension Array {
    
    func random() -> (element: Element, index: Int) {
        let randomNumber = CYUtil.randomInt(min: 0, max: self.count - 1)
        return (element: self[randomNumber], index: randomNumber)
    }
}
