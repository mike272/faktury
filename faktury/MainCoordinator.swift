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
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        self.navigationController?.setViewControllers([vc], animated: false)
    }
    
    func eventOccured(with type: Event) {
        
    }
    
    
}
