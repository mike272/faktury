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
        //option 1. not really necessary to use bindings here but it is a possibility
        ViewModel.accountNrObs.bind(to: myApprovalView.accNrCombo.dataLabel.rx.text).disposed(by: disposeBag)
        //option 2. just take data on ViewDidLoad and present it
        myApprovalView.tranTitleCombo.dataLabel.text = ViewModel.transactionTitleObs.value
        myApprovalView.tranAmountNrCombo.dataLabel.text = ViewModel.transactionAmountObs.value
    }

    

}
