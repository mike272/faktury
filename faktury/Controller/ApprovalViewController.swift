//
//  ApprovalViewController.swift
//  faktury
//
//  Created by Wojciech Babinski on 03/09/2022.
//

import UIKit
import RxSwift
import RxCocoa

class ApprovalViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?
    
    var viewModel = ViewModel()
    
    let disposeBag = DisposeBag()
        
    var myApprovalView = ApprovalView(frame: UIScreen.main.bounds)
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            view.addSubview(myApprovalView)
            
            myApprovalView.approveButton.addTarget(self, action: #selector(confirmButtonTapped), for: .touchUpInside)
            
            myApprovalView.goBackButton.addTarget(self, action: #selector(CancelButtonTapped), for: .touchUpInside)
            
            getData()
            
        }
    @objc func confirmButtonTapped(){
        coordinator?.eventOccured(with: .showFinalisationScreen)
    }

    @objc func CancelButtonTapped(){
        coordinator?.eventOccured(with: .goBack)
    }
    
    func getData(){
        ViewModel.accountNrObs.bind(to: myApprovalView.accountNumberLabel.rx.text).disposed(by: disposeBag)
        myApprovalView.accountNumberLabel.text = ViewModel.accountNrObs.value
        myApprovalView.transactionTitleLabel.text = ViewModel.transactionTitleObs.value
        myApprovalView.transactionAmountLabel.text = ViewModel.transactionAmountObs.value
    }

    

}
