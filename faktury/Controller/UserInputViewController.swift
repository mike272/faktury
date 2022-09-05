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
    
    let disposeBag = DisposeBag()
    
    let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        // Do any additional setup after loading the view.
        myView.submitButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        setUpBindings()
    }
    
    @objc func buttonTapped(){
        coordinator?.eventOccured(with: .showSummary)
    }
    
    func setUpBindings(){
        myView.accountNumberTF.rx.text.bind(to: viewModel.accountNrObs).disposed(by: disposeBag)
        myView.transferTitleTF.rx.text.bind(to: viewModel.transactionTitleObs).disposed(by: disposeBag)
        myView.amountTF.rx.text.bind(to: viewModel.transactionAmountObs).disposed(by: disposeBag)
        
        viewModel.isDatavalid.bind(to: myView.submitButton.rx.isEnabled).disposed(by: disposeBag)

    }


}

