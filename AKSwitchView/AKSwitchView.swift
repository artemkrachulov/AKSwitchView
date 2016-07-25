//
//  AKSwitchView.swift
//  Extended UIView class.
//
//  Created by Artem Krachulov.
//  Copyright © 2016 Artem Krachulov. All rights reserved.
//  Website: http://www.artemkrachulov.com/
//

import UIKit

/// UIView subclass with fixed zero height if view not have any subviews. After adding subviews class
/// will expand accordingly inner subview height.
/// After adding AKSwitchView to view controller with constraints, set zero height constraint to current AKSwitchView.
class AKSwitchView: UIView {
  
  //  MARK: - Properties
  
  private var constraintHeight = false  
  
  //  MARK: - Methods
  
  override func addSubview(view: UIView) {
    
    // Remove all inner subviews.
    removeSubview()
    
    // Check height constraint
    if let heightConstraint = heightConstraint(self) {
      constraintHeight = true
      removeConstraint(heightConstraint)
    }
    super.addSubview(view)
    
    if constraintHeight {
      
      view.translatesAutoresizingMaskIntoConstraints = false
      
      let viewsDictionary = ["view": view]
      
      addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[view]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary))
      addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[view]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary))
    } else {
      if let heightConstraint = heightConstraint(view) {
        view.removeConstraint(heightConstraint)
      }
      
      view.frame.origin = CGPointZero
      frame.size = view.frame.size
    }
  }
  
  func removeSubview() {
    
    for subview in subviews {
      subview.removeFromSuperview()
    }
    
    frame.size.height = 0
    
    if constraintHeight {
      addConstraint(NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 0))
    }
    constraintHeight = false
  }
  
  //  MARK: - Helper Methods
  
  private func heightConstraint(view: UIView) -> NSLayoutConstraint! {
    for constraint in view.constraints {
      if constraint.firstAttribute == .Height {
        return constraint
      }
    }
    return nil
  }
}