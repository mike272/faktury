//
//  SummaryView.swift
//  faktury
//
//  Created by Wojciech Babinski on 03/09/2022.
//

import UIKit

class ApprovalView: UIView {
    
    var verticalStackView = UIStackView()
    
    var goBackButton = CustomButton()
    var approveButton = CustomButton()

    var accNrCombo = doubleLabelWithLine()
    var tranTitleCombo = doubleLabelWithLine()
    var tranAmountNrCombo = doubleLabelWithLine()

    var horizontalStackView = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUpLabels()
       setUpButtons()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .white
        setUpLabels()
        setUpButtons()

        
    }
    
    func setUpLabels(){
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 20
        verticalStackView.distribution = .equalSpacing
        
        addSubview(verticalStackView)
        setConstraintsForStackView()

        accNrCombo.setUp(description: "ACCOUNT NUMBER")
        tranTitleCombo.setUp(description: "TRANSACTION TITLE")
        tranAmountNrCombo.setUp(description: "TRANSACTION AMOUNT")
        

        verticalStackView.addArrangedSubview(accNrCombo)
        verticalStackView.addArrangedSubview(tranTitleCombo)
        verticalStackView.addArrangedSubview(tranAmountNrCombo)

        verticalStackView.addArrangedSubview(horizontalStackView)
    }
    
    func setUpButtons(){
        horizontalStackView.axis = .horizontal
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.spacing = 20
        
        goBackButton.buttonSetUp(text: "Go Back")
        goBackButton.backgroundColor = .red
        approveButton.buttonSetUp(text: "Approve")
        
        horizontalStackView.addArrangedSubview(goBackButton)
        horizontalStackView.addArrangedSubview(approveButton)
    }
    
    func setConstraintsForStackView(){
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            verticalStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            verticalStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            verticalStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            verticalStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40)
        ])
    }
    
   
    

}
