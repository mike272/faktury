//
//  SummaryViewController.swift
//  faktury
//
//  Created by Michał Babinski on 05/09/2022.
//

import UIKit

class SummaryViewController: UIViewController {

    var coordinator: Coordinator?
    
var mySummaryView = SummaryView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(mySummaryView)
        
        mySummaryView.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped(){
        let wasPaymentSuccesful = mySummaryView.wasPaymentSuccessful
      
        coordinator?.eventOccured(with: wasPaymentSuccesful ? .goHome : .goBack)
    }

}
