//
//  ViewController.swift
//  UILabel
//
//  Created by Zulfikar Abdul Rahman Suwardi on 26/09/22.
//

import UIKit

class ViewController: UIViewController {
  
  private var label: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    
    label.backgroundColor = .systemGray // warna background
    label.textAlignment = .center // kerataan
    label.text = "Ini Labelsdasdasdasdasdasdadasd asdasdasdasdasdasdasdasdasdasdasdasdasd" // isi tulisan
    label.textColor = UIColor(red: 0.122, green: 0.216, blue: 0.365, alpha: 1) // warna teks
    label.font = UIFont(name: "Montserrat-Bold", size: 30) // font dan size
    
    label.numberOfLines = 2 // linenya dua baris
    
    // Tulisan bisa diklik
    label.isUserInteractionEnabled = true

    return label
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.addSubview(label)
    
    NSLayoutConstraint.activate([
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        label.heightAnchor.constraint(equalToConstant: 90),
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    
    // Function di klik
    let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClicked(_:)))
    label.addGestureRecognizer(guestureRecognizer)
    
  }
  
  @objc func labelClicked(_ sender: Any) {
          print("UILabel clicked")
      }


}

