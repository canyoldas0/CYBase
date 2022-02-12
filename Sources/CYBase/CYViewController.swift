//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

#if canImport(UIKit)

//MARK: - BaseViewController
import UIKit

open class CYViewController<V>: UIViewController {
    
    public var viewModel: V!
    
    public convenience init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
        configureUI()
    }
    
    open func setupVC() { }
    open func configureUI() { }
    
}
#endif
