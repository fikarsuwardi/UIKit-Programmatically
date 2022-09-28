//
//  Label.swift
//  ReusableViews
//
//  Created by Zulfikar Abdul Rahman Suwardi on 26/09/22.
//

import UIKit

class Label: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = "Test"
        self.textColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//
//  ViewController.swift
//  ReusableViews
//
//  Created by Zulfikar Abdul Rahman Suwardi on 26/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    let label = Label()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        labelSetup()
    }
    
    func labelSetup() {
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

