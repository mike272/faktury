//
//  doubleLabelWithLine.swift
//  faktury
//
//  Created by Michał Babinski on 06/09/2022.
//

import Foundation
import UIKit

class doubleLabelWithLine: UIView{
    var descriptionLabel = UILabel()
    var dataLabel = UILabel()
    var line = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setUp(description: String){
        setUpLabels(description: description)
        setUpLine()
        setUpConstraints()
    }
    
    func setUpLine(){
        line.layer.borderWidth = 1.0
        line.layer.borderColor = UIColor.gray.cgColor
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line.widthAnchor.constraint(equalToConstant: bounds.width).isActive = true
    }
    
    func setUpLabels(description: String){
        descriptionLabel.text = description
        descriptionLabel.font = UIFont.systemFont(ofSize: 26)
        descriptionLabel.textColor = .black
        descriptionLabel.textAlignment = .center
        
        dataLabel.text = ""
        dataLabel.font = UIFont.systemFont(ofSize: 16)
        dataLabel.textColor = .black
        dataLabel.textAlignment = .center
        
        addSubview(descriptionLabel)
        addSubview(dataLabel)
        addSubview(line)
        
    }
    
    func setUpConstraints(){
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        dataLabel.translatesAutoresizingMaskIntoConstraints = false
        line.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            dataLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 6),
            dataLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            dataLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            
            line.topAnchor.constraint(equalTo: dataLabel.bottomAnchor, constant: 6),
            line.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            line.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            
        ])
    }
    
}
