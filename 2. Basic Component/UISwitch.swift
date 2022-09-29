//
//  Tes.swift
//  WideBank2
//
//  Created by Zulfikar Abdul Rahman Suwardi on 28/09/22.
//

import UIKit

class Tes: UIViewController {
    
  var switchBar: UISwitch = {
    let switchBar = UISwitch()
    switchBar.translatesAutoresizingMaskIntoConstraints = false
    
    switchBar.setOn(true, animated: true) // ngasih kondisi awal
    
    switchBar.onTintColor = UIColor(red: 0.122, green: 0.216, blue: 0.365, alpha: 1) // ganti warna background saat true
    switchBar.thumbTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) // ganti warna thumbnya
    
    switchBar.transform = CGAffineTransform(scaleX: 1.5, y: 1.5) // buat perbesar switch
    
    return switchBar
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    switchBar.addTarget(self, action: #selector(self.switchStateDidChange(_:)), for: .valueChanged)
    switchBar.setOn(true, animated: false)
    view.addSubview(switchBar)
    
    switchBar.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 20, bottom: 0, right: 0), size: .init(width: 0, height: 0))
  
  }
  
  @objc func switchStateDidChange(_ sender:UISwitch!)
  {
      if (sender.isOn == true){
          print("UISwitch state is now ON")
      }
      else{
          print("UISwitch state is now Off")
      }
  }

}
