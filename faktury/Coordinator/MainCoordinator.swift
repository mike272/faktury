//
//  MainCoordinator.swift
//  faktury
//
//  Created by Wojciech Babinski on 02/09/2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator{
    var navigationController: UINavigationController?
    
    func start() {
        var vc: UIViewController & Coordinating = UserInputViewController()
        vc.coordinator = self
        self.navigationController?.setViewControllers([vc], animated: false)
    }
    
    func eventOccured(with type: Event) {
        switch type{
        case .showSummary:
            let vc = ApprovalViewController()
            
            navigationController?.pushViewController(vc, animated: true)
            break
        case .showFinalisationScreen:
            break
        }
    }
    
    
}
