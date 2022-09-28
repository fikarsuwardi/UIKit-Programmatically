//
//  TextView.swift
//  WideBank2
//
//  Created by Zulfikar Abdul Rahman Suwardi on 28/09/22.
//

import UIKit

class Tes: UIViewController {
  
  var teksView: UITextView = {
    let textView = UITextView()
    textView.translatesAutoresizingMaskIntoConstraints = false
    
    textView.textAlignment = NSTextAlignment.justified
    textView.backgroundColor = UIColor.lightGray
    
    // Use RGB colour
    textView.backgroundColor = UIColor(red: 39/255, green: 53/255, blue: 182/255, alpha: 1)
    
    // Update UITextView font size and colour
    textView.font = UIFont.systemFont(ofSize: 20)
    textView.textColor = UIColor.white
    
    textView.font = UIFont.boldSystemFont(ofSize: 20)
    textView.font = UIFont(name: "Verdana", size: 17)
    
    // Capitalize all characters user types
    textView.autocapitalizationType = UITextAutocapitalizationType.allCharacters
    
    // Make UITextView web links clickable
    textView.isSelectable = true
    textView.isEditable = false
    textView.dataDetectorTypes = UIDataDetectorTypes.link
    
    // Make UITextView corners rounded
    textView.layer.cornerRadius = 10
    
    // Enable auto-correction and Spellcheck
    textView.autocorrectionType = UITextAutocorrectionType.yes
    textView.spellCheckingType = UITextSpellCheckingType.yes
    // myTextView.autocapitalizationType = UITextAutocapitalizationType.None
    
    // Make UITextView Editable
    textView.isEditable = true
    
    return textView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    view.addSubview(teksView)
    teksView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
    teksView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    teksView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    teksView.heightAnchor.constraint(equalToConstant: 50).isActive = true
  }
  
}
