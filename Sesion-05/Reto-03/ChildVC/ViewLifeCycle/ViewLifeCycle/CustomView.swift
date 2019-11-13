//
//  CustomView.swift
//  ViewLifeCycle
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class CustomView: UIView {

  override func didAddSubview(_ subview: UIView) {
    print(#function)
  }
  
  override func willRemoveSubview(_ subview: UIView) {
     print(#function)
  }
  
  override func willMove(toSuperview newSuperview: UIView?) {
     print(#function)
  }
  
  override func didMoveToSuperview() {
     print(#function)
  }
  
  override func willMove(toWindow newWindow: UIWindow?) {
     print(#function)
  }
  
  override func didMoveToWindow() {
     print(#function)
  }

}
