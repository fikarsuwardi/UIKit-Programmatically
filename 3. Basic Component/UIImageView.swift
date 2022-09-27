//
//  ImageUmum.swift
//  WideBank2
//
//  Created by Zulfikar Abdul Rahman Suwardi on 27/09/22.
//

import UIKit

class ImageUmum: UIImageView {
  init() {
    super.init(frame: .zero)
    let image = UIImage(named: "Profile")
    
//    self.contentMode = UIView.ContentMode.scaleAspectFit
//    self.frame.size.width = 57
//    self.frame.size.height = 52
    self.image = image
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
