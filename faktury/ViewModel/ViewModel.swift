//
//  ViewModel.swift
//  faktury
//
//  Created by Michał Babinski on 05/09/2022.
//

import Foundation
import RxSwift
import RxCocoa


class ViewModel{
    let accountNrObs = BehaviorRelay<String?>(value: "")
    let transactionTitleObs = BehaviorRelay<String?>(value: "")
    let transactionAmountObs = BehaviorRelay<String?>(value: "")
    
    let disposeBag = DisposeBag()
    
    let minAccountNrLength = 6
    
    var isDatavalid: Observable<Bool>{
        return Observable.combineLatest(accountNrObs, transactionTitleObs, transactionAmountObs){
            accountNr, transactionTitle, transactionAmount in
            guard accountNr != nil && transactionTitle != nil && transactionAmount != nil
            else{
                return false
            }
            
            return self.validate(accNr: accountNr!, tranTitle: transactionTitle!, tranAmount: transactionAmount!)
            
        }
    }
    
    func validate(accNr: String, tranTitle: String, tranAmount: String) -> Bool{
//        return accNr.count == 6 && tranTitle.count > 0 && !tranAmount.isEmpty
        if accNr.count != 6 || accNr.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
        {
            return false
        }
        if tranAmount.isEmpty || tranAmount.rangeOfCharacter(from: CharacterSet.decimalDigits) == nil
        {
            return false
        }
        if tranTitle.isEmpty
        {
            return false
        }
        
        return true
    }

}
