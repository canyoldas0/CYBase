//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

#if canImport(UIKit)
import UIKit

open class CYTableViewCell: UITableViewCell {
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViewComponents()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        addViewComponents()
    }
    
    open func addViewComponents() {}
 
}

#endif
