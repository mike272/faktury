//
//  ViewController.swift
//  faktury
//
//  Created by Wojciech Babinski on 02/09/2022.
//

import RxSwift
import UIKit
import RxCocoa

class UserInputViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    private var myView = UserInputView(frame: UIScreen.main.bounds)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        // Do any additional setup after loading the view.
        myView.submitButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped(){
        coordinator?.eventOccured(with: .showSummary)
    }


}

