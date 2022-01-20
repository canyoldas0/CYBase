//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

#if canImport(UIKit)
import UIKit

open class CYNibView: CYBaseView {
    
    override public func loadFromNib() -> UIView {
        super.loadFromNib()
        let nib = UINib(nibName: self.identifier, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}


#endif
