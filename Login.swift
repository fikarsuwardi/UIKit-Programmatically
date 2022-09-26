//
//  ViewController.swift
//  WideBank2
//
//  Created by Zulfikar Abdul Rahman Suwardi on 22/09/22.
//

import UIKit

class firstLogin: UIViewController {
    
    var viewStatusBar: UIView = {
        let view = UIView()
//        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    var labelLoginAccount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "Scada-Bold", size: 24)
        label.text = "Login Account"
        
        // Line height: 30 pt
        // (identical to box height)
        
        return label
    }()
    
    var labelHelloWelcome: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false

        label.textColor = UIColor(red: 0.592, green: 0.592, blue: 0.592, alpha: 1)
        label.font = UIFont(name: "Montserrat-Regular", size: 13)

        // Line height: 16 pt
        // (identical to box height)

        label.text = "Hello, welcome to wide banking"
        
        return label
    }()
    
    var viewAction: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.layer.backgroundColor = UIColor(red: 0.922, green: 0.925, blue: 0.949, alpha: 1).cgColor
        view.layer.cornerRadius = min(UIScreen.main.bounds.width - 28 - 28, 60) / 2
        view.layer.masksToBounds = true
        
        return view
    }()
    
    var viewActionLogin: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.layer.backgroundColor = UIColor(red: 0.047, green: 0.298, blue: 0.541, alpha: 1).cgColor
        view.layer.cornerRadius = 40/2
        
        return view
    }()
    
    var labelLogin: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Scada-Bold", size: 13)

        // Line height: 16 pt
        // (identical to box height)

        label.text = "Login"
        
        return label
    }()
    
    var viewUsername: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .white
        return view
    }()
    
    var labelUsername: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.textColor = UIColor(red: 0.154, green: 0.154, blue: 0.164, alpha: 1)
        label.font = UIFont(name: "Mulish-Bold", size: 15)

        // Line height: 33 pt
        // (identical to box height)

        label.text = "Username"
        
        return label
    }()
    
    var teksFieldUsername: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.layer.backgroundColor = UIColor(red: 0.922, green: 0.925, blue: 0.949, alpha: 1).cgColor
        textField.autocapitalizationType = .none
        textField.layer.cornerRadius = 10
        
        // Add Padding Left
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 50)) // 50 is height of teksField
        textField.leftView = paddingView
        textField.leftViewMode = UITextField.ViewMode.always
        
        textField.text = "nadyanikita"
        
        return textField
    }()
    
    var viewPassword: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .white
        return view
    }()
    
    var labelPassword: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.textColor = UIColor(red: 0.154, green: 0.154, blue: 0.164, alpha: 1)
        label.font = UIFont(name: "Mulish-Bold", size: 15)

        // Line height: 33 pt
        // (identical to box height)

        label.text = "Password"
        
        return label
    }()
    
    var teksFieldPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.layer.backgroundColor = UIColor(red: 0.922, green: 0.925, blue: 0.949, alpha: 1).cgColor
        textField.autocapitalizationType = .none
        textField.layer.cornerRadius = 10
        
        // Add Padding Left
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 50)) // 50 is height of teksField
        textField.leftView = paddingView
        textField.leftViewMode = UITextField.ViewMode.always
        
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    var labelLupaPassword: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.textColor = UIColor(red: 0.047, green: 0.298, blue: 0.541, alpha: 1)
        label.font = UIFont(name: "Mulish-ExtraBold", size: 15)

        // Line height: 33 pt
        // (identical to box height)

        label.text = "Lupa Password?"
        
        return label
    }()
    
    var buttonLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor(red: 0.922, green: 0.925, blue: 0.949, alpha: 1), for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.122, green: 0.216, blue: 0.365, alpha: 1).cgColor
        button.layer.cornerRadius = 49/2
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(viewStatusBar)
        
        viewStatusBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewStatusBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewStatusBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        viewStatusBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        view.addSubview(labelLoginAccount)
        labelLoginAccount.topAnchor.constraint(equalTo: view.topAnchor, constant: 59).isActive = true
        labelLoginAccount.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        labelLoginAccount.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -28).isActive = true
        labelLoginAccount.heightAnchor.constraint(equalToConstant: 30).isActive = true
                
        
        view.addSubview(labelHelloWelcome)
        labelHelloWelcome.topAnchor.constraint(equalTo: labelLoginAccount.bottomAnchor, constant: 0).isActive = true
        labelHelloWelcome.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        labelHelloWelcome.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -28).isActive = true
        labelHelloWelcome.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        
        view.addSubview(viewAction)
        viewAction.topAnchor.constraint(equalTo: labelHelloWelcome.bottomAnchor, constant: 41).isActive = true
        viewAction.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        viewAction.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -28).isActive = true
        viewAction.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        viewAction.addSubview(viewActionLogin)
        viewActionLogin.topAnchor.constraint(equalTo: viewAction.topAnchor, constant: 10).isActive = true
        viewActionLogin.leftAnchor.constraint(equalTo: viewAction.leftAnchor, constant:  (UIScreen.main.bounds.width - 28 - 28 - 20 - 20) / 2 + 20).isActive = true
        viewActionLogin.rightAnchor.constraint(equalTo: viewAction.rightAnchor, constant: -20).isActive = true
        viewActionLogin.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        viewActionLogin.addSubview(labelLogin)
        labelLogin.centerXAnchor.constraint(equalTo: viewActionLogin.centerXAnchor).isActive = true
        labelLogin.centerYAnchor.constraint(equalTo: viewActionLogin.centerYAnchor).isActive = true
        
        view.addSubview(viewUsername)
        viewUsername.topAnchor.constraint(equalTo: viewAction.bottomAnchor, constant: 33).isActive = true
        viewUsername.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        viewUsername.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        viewUsername.heightAnchor.constraint(equalToConstant: 83).isActive = true
        
        viewUsername.addSubview(labelUsername)
        labelUsername.topAnchor.constraint(equalTo: viewUsername.topAnchor, constant: 0).isActive = true
        labelUsername.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        labelUsername.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        labelUsername.heightAnchor.constraint(equalToConstant: 33).isActive = true
        
        viewUsername.addSubview(teksFieldUsername)
        teksFieldUsername.topAnchor.constraint(equalTo: labelUsername.bottomAnchor, constant: 0).isActive = true
        teksFieldUsername.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        teksFieldUsername.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        teksFieldUsername.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(viewPassword)
        viewPassword.topAnchor.constraint(equalTo: viewUsername.bottomAnchor, constant: 15).isActive = true
        viewPassword.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        viewPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        viewPassword.heightAnchor.constraint(equalToConstant: 83).isActive = true
        
        viewPassword.addSubview(labelPassword)
        labelPassword.topAnchor.constraint(equalTo: viewPassword.topAnchor, constant: 0).isActive = true
        labelPassword.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        labelPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        labelPassword.heightAnchor.constraint(equalToConstant: 33).isActive = true
        
        viewPassword.addSubview(teksFieldPassword)
        teksFieldPassword.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 0).isActive = true
        teksFieldPassword.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        teksFieldPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        teksFieldPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(labelLupaPassword)
        labelLupaPassword.topAnchor.constraint(equalTo: viewPassword.bottomAnchor, constant: 47).isActive = true
        labelLupaPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelLupaPassword.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        view.addSubview(buttonLogin)
        buttonLogin.topAnchor.constraint(equalTo: labelLupaPassword.bottomAnchor, constant: 55).isActive = true
        buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonLogin.widthAnchor.constraint(equalToConstant: 239).isActive = true
        buttonLogin.heightAnchor.constraint(equalToConstant: 49).isActive = true
    }


}

