//
//  Demo2ViewController.swift
//  AKSwitchView
//
//  Created by Artem Krachulov.
//  Copyright © 2016 Artem Krachulov. All rights reserved.
//  Website: http://www.artemkrachulov.com/
//

import UIKit

class Demo2ViewController: DemoViewController {
  
  //  MARK: - Outlets
  
  @IBOutlet weak var switchView1: AKSwitchView!
  @IBOutlet weak var switchView2: AKSwitchView!
  @IBOutlet weak var switchView3: AKSwitchView!
  
  //  MARK: -  Life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
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