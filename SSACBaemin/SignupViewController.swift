//
//  SignupViewController.swift
//  SSACBaemin
//
//  Created by Sang hun Lee on 2021/09/30.
//

import UIKit

class SignupViewController: UIViewController {
    @IBAction func tapClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
}
