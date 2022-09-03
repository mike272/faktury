//
//  ViewController.swift
//  faktury
//
//  Created by Wojciech Babinski on 02/09/2022.
//

import UIKit

class UserInputViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    
    override func loadView() {
        super.view = UserInputView(frame: UIScreen.main.bounds)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func tappedButton(){
        coordinator?.eventOccured(with: .showSummary)
    }


}

