//
//  Demo3ViewController.swift
//  AKSwitchView
//
//  Created by Artem Krachulov.
//  Copyright © 2016 Artem Krachulov. All rights reserved.
//  Website: http://www.artemkrachulov.com/
//

import UIKit

class Demo3ViewController: DemoViewController {
  
  //  MARK: - Objects
  
  var switchView1: AKSwitchView!
  var switchView2: AKSwitchView!
  var switchView3: AKSwitchView!
  
  //  MARK: - Life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    switchView1 = AKSwitchView(frame: CGRectMake(0, 80, 600, 0))
    view.addSubview(switchView1)
    
    switchView2 = AKSwitchView(frame: CGRectMake(0, 150, 600, 0))
    view.addSubview(switchView2)
    
    switchView3 = AKSwitchView(frame: CGRectMake(0, 250, 600, 0))
    view.addSubview(switchView3)
    
    show()
  }
  
  //  MARK: - Actions
  
  @IBAction func showAction(sender: AnyObject) {
    show()
  }
  
  @IBAction func removeAction(sender: AnyObject) {
    switchView1.removeSubview()
    switchView2.removeSubview()
    switchView3.removeSubview()
  }

  func show() {
    label.frame = CGRectMake(0, 0, 375, 50)
    switchView1.addSubview(label)
    
    _view.frame = CGRectMake(0, 0, 375, 50)
    switchView2.addSubview(_view)
    
    textView.frame = CGRectMake(0, 0, 375, 200)
    switchView3.addSubview(textView)
  }
}