//
//  FirstScreen.swift
//  faktury
//
//  Created by Wojciech Babinski on 02/09/2022.
//

import UIKit

class FirstScreen: UIView {
    
    var stackView = UIStackView()
    
    var titleLabel = UILabel()

    var accountNumberLabel = UILabel()
    var amountLabel = UILabel()
    var transferTitleLabel = UILabel()

    var accountNumberTF = UITextField()
    var amountTF = UITextField()
    var transferTitleTF = UITextField()
    
    var submitButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setupTitleLabel()
        setupStackView()
        addSubViewsToStack()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupTitleLabel()
        setupStackView()
        addSubViewsToStack()
    }
    
    func setupStackView(){
        addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 20
        
        setConstraintsForStackView()
    }
    
    func setConstraintsForStackView(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 60)
        ])
    }
    
    func addSubViewsToStack(){
        
    }
    
    func setupTitleLabel(){
        
        addSubview(titleLabel)
        
        titleLabel.text = "Swift Accounting"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 40)
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .center
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0),
            titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0)
        ])
    }

}
