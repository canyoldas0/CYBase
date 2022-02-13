//
//  File.swift
//  
//
//  Created by Can Yoldaş on 13.02.2022.
//

#if canImport(UIKit)

//MARK: - GenericBaseView
import UIKit
import Foundation

open class CYNibView<T>: BaseView {
    
    private var data: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    
    public init(frame: CGRect = .zero, data: T?) {
        self.data = data
        super.init(frame: frame)
        loadFromNib()
        loadDataToView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open func loadDataToView() { }
    
    open func loadFromNib() {
        let viewFromNib = Bundle.main.loadNibNamed(Self.identifier, owner: self, options: nil)![0] as! UIView
        viewFromNib.frame = self.bounds
        addSubview(viewFromNib)
    }
    
    open func setData(data: T?) {
        self.data = data
        loadDataToView()
    }
    
    open func returnData() -> T? {
        return data
    }
}
#endif
