//
//  SummaryView.swift
//  faktury
//
//  Created by Wojciech Babinski on 03/09/2022.
//

import UIKit

class ApprovalView: UIView {
    
    var verticalStackView = UIStackView()
    
    var accountNumberLabel = UILabel()
    var transactionAmountLabel = UILabel()
    var transactionTitleLabel = UILabel()
    
    var goBackButton = CustomButton()
    var approveButton = CustomButton()
    
    var horizontalStackView = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
       
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .white

        
    }
    
    func setUpLabels(){
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 20
        verticalStackView.distribution = .equalSpacing
        
        accountNumberLabel.text = "test1"
        transactionTitleLabel.text = "test2"
        transactionAmountLabel.text = "test3"
        
        verticalStackView.addArrangedSubview(accountNumberLabel)
        verticalStackView.addArrangedSubview(transactionTitleLabel)
        verticalStackView.addArrangedSubview(transactionAmountLabel)
        verticalStackView.addArrangedSubview(horizontalStackView)
    }
    
    func setUpButtons(){
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 20
        
        goBackButton.buttonSetUp(text: "Go Back")
        goBackButton.backgroundColor = .red
        approveButton.buttonSetUp(text: "Approve")
        
        horizontalStackView.addArrangedSubview(goBackButton)
        horizontalStackView.addArrangedSubview(approveButton)
    }
    

}
