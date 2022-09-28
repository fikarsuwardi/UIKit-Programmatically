//
//  Button.swift
//  ReusableViews
//
//  Created by Zulfikar Abdul Rahman Suwardi on 26/09/22.
//

import UIKit

class Button: UIButton {
    enum Style {
        case primary
        case secondary
    }
    
    enum Size {
        case small
        case medium
        case large
    }
    
    enum Corner {
        case small
        case medium
        case large
    }
    
    public private(set) var size: Size
    public private(set) var corner: Corner
    public private(set) var style: Style
    public private(set) var title: String
    
    init(style: Style, size: Size, corner: Corner, title: String) {
        self.size = size
        self.style = style
        self.corner = corner
        self.title = title
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init Code has not")
    }
    
    private func setup() {
        buttonSetup()
        handleSizeButton()
        handleStyleButton()
        handleCornerButton()
    }
    
    private func buttonSetup() {
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(title, for: .normal)
    }
    
    private func handleCornerButton() {
        switch corner {
        case .small:
            layer.cornerRadius = 4
        case .medium:
            layer.cornerRadius =  8
        case .large:
            layer.cornerRadius = 15
        }
    }
    
    private func handleStyleButton() {
        switch style {
        case .primary:
            backgroundColor = .blue
        case .secondary:
            backgroundColor = .black
            tintColor = .white
        }
    }
    
    private var smallContentEdgeInsets: UIEdgeInsets {
        UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
    }
    
    private var mediumContentEdgeInsets: UIEdgeInsets {
        UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    private var largeContentEdgeInsets: UIEdgeInsets {
        UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    private func handleSizeButton() {
        switch size {
        case .small:
            contentEdgeInsets = smallContentEdgeInsets
        case .medium:
            contentEdgeInsets = mediumContentEdgeInsets
        case .large:
            contentEdgeInsets = largeContentEdgeInsets
        }
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
    
    let button = Button(style: .primary, size: .medium, corner: .medium, title: "Tes Button")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonSetup()
        view.backgroundColor = .red
    }
    
    func buttonSetup() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
  
}

