//
//  ViewUmum.swift
//  WideBank2
//
//  Created by Zulfikar Abdul Rahman Suwardi on 27/09/22.
//

import UIKit

class ViewUmum: UIView {
  init() {
    super.init(frame: .zero)
    self.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
    self.layer.cornerRadius = 10
    self.layer.borderWidth = 1
    self.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
