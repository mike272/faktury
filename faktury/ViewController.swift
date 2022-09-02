//
//  ViewController.swift
//  faktury
//
//  Created by Wojciech Babinski on 02/09/2022.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    
    override func loadView() {
        super.view = FirstScreen(frame: UIScreen.main.bounds)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

