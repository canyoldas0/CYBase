//
//  File.swift
//  
//
//  Created by Can Yoldas on 20.01.2022.
//

#if canImport(UIKit)
import UIKit
import CoreGraphics


// MARK: Attributes of View
public extension UIView {
        
     static var identifier: String {
        return String(describing: self)
    }
    
    var height: CGFloat {
            get { return frame.size.height }
            set { frame.size.height = newValue }
        }
    
    var width: CGFloat {
            get { return frame.size.width }
            set { frame.size.width = newValue }
        }
    
    var left: CGFloat { return frame.origin.x }
    var right: CGFloat { return self.left + self.width }
    var top: CGFloat { return frame.origin.y }
    var bottom: CGFloat { return self.top + self.height }
}

// MARK: Basic Animation
public extension UIView {
    
    func startTappedAnimation(with completion: @escaping (Bool) -> Void) {
          
          transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
          
          UIView.animate(
              withDuration: 0.3,
              delay: 0,
              usingSpringWithDamping: 0.8,
              initialSpringVelocity: 6.0,
              options: .allowUserInteraction,
              animations: {
              self.transform = CGAffineTransform.identity
          }, completion: completion)
        
          self.layoutIfNeeded()
      }
}

public extension UIView {
    
    func roundCorner(with radius: CGFloat? = nil) {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius ?? (min(self.width,self.height) / 2 )
    }
    
    func loadNibFile() {
        let viewFromNib = Bundle.main.loadNibNamed(Self.identifier, owner: self, options: nil)![0] as! UIView
        viewFromNib.frame = self.bounds
        addSubview(viewFromNib)
    }
}

#endif

