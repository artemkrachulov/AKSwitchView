//
//  DemoViewController.swift
//  AKSwitchView
//
//  Created by Artem Krachulov.
//  Copyright © 2016 Artem Krachulov. All rights reserved.
//  Website: http://www.artemkrachulov.com/
//

import UIKit

class DemoViewController: UIViewController {
  
  //  MARK: - Lazy Objects
  
  lazy var label : UILabel! = {
    let label =  UILabel()
    label.text = "Lorem Ipsum"
    label.backgroundColor = UIColor.lightGrayColor()
    
    return label
  }()
  
  lazy var _view : UIView! = {
    let _view = UIView()
    _view.backgroundColor = UIColor.redColor()
    _view.addConstraint(NSLayoutConstraint(item: _view, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 50))
    
    return _view
  }()
  
  lazy var textView : UITextView! = {    
    let textView = UITextView()
    textView.scrollEnabled = false
    textView.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."    
    textView.backgroundColor = UIColor.lightGrayColor()
    
    return textView
  }()
}