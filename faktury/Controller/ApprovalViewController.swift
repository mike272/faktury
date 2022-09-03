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
        }


    

}
