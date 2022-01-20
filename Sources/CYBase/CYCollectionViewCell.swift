//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

#if canImport(UIKit)
import UIKit

open class CYCollectionViewCell: UICollectionViewCell {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        addViewComponents()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        addViewComponents()
    }
    
    open func addViewComponents() {}
}

#endif
