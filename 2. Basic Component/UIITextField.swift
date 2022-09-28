//
//  TextField.swift
//  WideBank2
//
//  Created by Zulfikar Abdul Rahman Suwardi on 28/09/22.
//

import UIKit

class TextField: UIViewController {
  
  var teksField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    
    textField.layer.backgroundColor = UIColor(red: 0.922, green: 0.925, blue: 0.949, alpha: 1).cgColor
    textField.autocapitalizationType = .none // Capital di huruf pertama
    textField.layer.cornerRadius = 10
    
    // Add Padding Left
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 50)) // 50 is height of teksField
    textField.leftView = paddingView
    textField.leftViewMode = UITextField.ViewMode.always
    
//    textField.text = "nadyanikita"
    textField.placeholder = "insert name here"
    
    textField.borderStyle = .line
    textField.keyboardAppearance = .dark
//    textField.keyboardType = .numberPad
    textField.font = UIFont.systemFont(ofSize: 13)
    
    
    return textField
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    view.addSubview(teksField)
    teksField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
    teksField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    teksField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    teksField.heightAnchor.constraint(equalToConstant: 50).isActive = true
  }
  
}
