//
//  ApprovalViewController.swift
//  faktury
//
//  Created by Wojciech Babinski on 03/09/2022.
//

import UIKit

class ApprovalViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?
        
    var myApprovalView = ApprovalView(frame: UIScreen.main.bounds)
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            view.addSubview(myApprovalView)
            
            myApprovalView.approveButton.addTarget(self, action: #selector(confirmButtonTapped), for: .touchUpInside)
            
            myApprovalView.goBackButton.addTarget(self, action: #selector(CancelButtonTapped), for: .touchUpInside)
        }
    @objc func confirmButtonTapped(){
        coordinator?.eventOccured(with: .showFinalisationScreen)
    }

    @objc func CancelButtonTapped(){
        coordinator?.eventOccured(with: .showuserInputScreen)
    }

    

}
