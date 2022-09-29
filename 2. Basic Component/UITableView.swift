//
//  TableView.swift
//  WideBank2
//
//  Created by Zulfikar Abdul Rahman Suwardi on 28/09/22.
//

import UIKit

class TableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  let myArray: NSArray = ["Paymen", "Transfer", "Top Up", "Cardless", "History", "My Cards"]
  
  let tableViewShorcut: UITableView = {
    let tableView = UITableView()
    tableView.translatesAutoresizingMaskIntoConstraints = false
        
    return tableView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
//    view.backgroundColor = .white
    
    tableViewShorcutSetup()
  }
  
  func tableViewShorcutSetup() {
    tableViewShorcut.delegate = self
    tableViewShorcut.dataSource = self
    tableViewShorcut.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    
    view.addSubview(tableViewShorcut)
    tableViewShorcut.anchor(top: searchBar.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 34, left: 18, bottom: 0, right: 17), size: .init(width: 376, height: 289))
  }
  
 // Buat kasih action pada saat row tabel di klik
 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     print("Num: \(indexPath.row)")
     print("Value: \(myArray[indexPath.row])")
 }

 // Buat nentuin jumlah rownya
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return myArray.count
 }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
      cell.textLabel!.text = "\(myArray[indexPath.row])"
      return cell
  }
  
  
  
}
