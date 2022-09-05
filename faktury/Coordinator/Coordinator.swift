//
//  Coordinator.swift
//  faktury
//
//  Created by Wojciech Babinski on 02/09/2022.
//

import Foundation
import UIKit

enum Event{
    case showSummary
    case showFinalisationScreen
    case showuserInputScreen
}

protocol Coordinator{
    var navigationController: UINavigationController? {get set}
    
    func start()
    
    func eventOccured(with type: Event)
}

protocol Coordinating{
    var coordinator: Coordinator? {get set}
}
