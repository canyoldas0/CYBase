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
    
    lazy var loadingView: UIActivityIndicatorView = {
        let temp = UIActivityIndicatorView(style: .medium)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isHidden = true
        return temp
    }()
    
    public convenience init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupIndicatorView()
        setupVC()
        configureUI()
    }
    
    
    private func setupIndicatorView() {
        view.addSubview(loadingView)
        
        NSLayoutConstraint.activate([
            
            loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    open func startLoading() {
        loadingView.startAnimating()
        loadingView.isHidden = false
    }
    
    open func stopLoading() {
        loadingView.stopAnimating()
        loadingView.isHidden = true
    }
    
    open func setupVC() { }
    open func configureUI() { }
    
}
#endif
