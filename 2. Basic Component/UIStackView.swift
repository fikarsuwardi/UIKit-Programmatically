    lazy var header: UIStackView = {
            let stackView = UIStackView()
            stackView.frame = CGRect(x: 0, y: 70, width: UIScreen.main.bounds.width, height: 40)
            stackView.axis = .horizontal
            stackView.backgroundColor = .systemBlue
            stackView.distribution = .fillEqually
            stackView.alignment = .fill
            stackView.spacing = 0
            
            stackView.addArrangedSubview(self.viewPenerima)
            stackView.addArrangedSubview(self.viewRiwayat)

            return stackView
    }()

    lazy var viewPenerima: UIView = {
            let view = UIView()
    
            view.addSubview(labelPenerima)
            return view
    }()
        
    lazy var viewRiwayat: UIView = {
            let view = UIView()
        
            view.addSubview(labelRiwayat)
            return view
    }()
