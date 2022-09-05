//
//  CustomButton.swift
//  faktury
//
//  Created by Wojciech Babinski on 03/09/2022.
//

import UIKit

class CustomButton: UIButton {

    func buttonSetUp(text: String){
        setTitle(text, for: .normal)
        backgroundColor = .blue
        setTitleColor(.gray, for: .disabled)
        titleLabel?.font = UIFont.systemFont(ofSize: 26)
        layer.cornerRadius = 11
        }
}
