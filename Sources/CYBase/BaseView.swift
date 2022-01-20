//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

#if canImport(UIKit)

import UIKit

//MARK: - BaseView
open class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib
        addViewComponents()
        setupViews()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadFromNib
        addViewComponents()
        setupViews()
    }
    
    open func loadFromNib() -> UIView? {}
    open func addViewComponents() {}
    open func setupViews() {}
    
}





#endif
