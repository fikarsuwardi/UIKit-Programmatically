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
