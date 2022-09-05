//
//  SummaryView.swift
//  faktury
//
//  Created by Michał Babinski on 05/09/2022.
//

import UIKit

class SummaryView: UIView {

    var statusLabel = UILabel()
    var successIcon = UIImage(systemName: "checkmark.circle.fill")
    var failureIcon = UIImage(systemName: "xmark.circle.fill")
    
    var imageView: UIImageView?
    
    var isSuccess: Bool = false

    var button = CustomButton()
    
    var wasPaymentSuccessful = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        wasPaymentSuccessful = (Double.random(in: 0 ..< 1) < 0.5)
        
        setUp()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
        setUpConstraints()
    }
    
    func setUp(){
        
        
        button.buttonSetUp(text:wasPaymentSuccessful ? "Go Home" : "Return")
        backgroundColor = .white
        statusLabel.text = wasPaymentSuccessful ? "Your payment has been succesful. Go back to First Screen" : "Sorry, your payment could not be processed. Try changing your transaction information"
        statusLabel.textColor = .black
        statusLabel.numberOfLines = 0
        statusLabel.textAlignment = .center
        
        addSubview(statusLabel)

        imageView = UIImageView(image: (wasPaymentSuccessful ? successIcon : failureIcon)!)
        imageView?.tintColor = wasPaymentSuccessful ? .green : .red
        
        addSubview(imageView!)
        addSubview(statusLabel)
        addSubview(button)
    }
    
    func setUpConstraints(){
        button.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        imageView!.translatesAutoresizingMaskIntoConstraints = false

        let iconSize = 120.0
        
        NSLayoutConstraint.activate([
            imageView!.heightAnchor.constraint(equalToConstant: iconSize),
            imageView!.widthAnchor.constraint(equalToConstant: iconSize),
            imageView!.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            imageView!.centerXAnchor.constraint(equalTo: centerXAnchor),


            statusLabel.topAnchor.constraint(equalTo: imageView!.bottomAnchor, constant: 20),
            statusLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            statusLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            button.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 120),
            
            //this looks nice but I think the buttons should be unified
            //so it will look like in the first screen
//            button.centerXAnchor.constraint(equalTo: centerXAnchor),
//            button.widthAnchor.constraint(equalToConstant: 180),
            button.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 60),

        ])
        
    }
    
    

}
