//
//  BasicButton.swift
//  BasicComponentProgramatically
//
//  Created by Zulfikar Abdul Rahman Suwardi on 26/09/22.
//

import UIKit

class BasicButton: UIViewController {
  
  var button: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    
    button.setTitle("Ini Button", for: .normal)
    // button.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 20) // custom font
    // button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20) // bold font
    button.titleLabel?.font = UIFont.italicSystemFont(ofSize: 20) // italic font
    
    button.setTitleColor(UIColor(red: 0.922, green: 0.925, blue: 0.949, alpha: 1), for: .normal)
    button.layer.backgroundColor = UIColor(red: 0.122, green: 0.216, blue: 0.365, alpha: 1).cgColor
    
    button.layer.cornerRadius = 53/2 // panjang atau lebar per 2
    
    button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
    
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    view.addSubview(button)
    // panjang lebar
    button.heightAnchor.constraint(equalToConstant: 53).isActive = true
    button.widthAnchor.constraint(equalToConstant: 339).isActive = true
    // posisi tengah
    button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
  }
  
  @objc func buttonAction(_ sender:UIButton!) {
    print("Button tapped")
  }
  
  
}
