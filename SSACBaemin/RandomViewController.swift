//
//  RandomViewController.swift
//  SSACBaemin
//
//  Created by Sang hun Lee on 2021/09/29.
//

import UIKit

class RandomViewController: UIViewController {
    
    @IBOutlet var randomNumLabel: UILabel!
    @IBOutlet var checkBtn: UIButton!
    
    // viewController의 lifeCycle
    // 화면이 사용자에게 보여지기 직전에 실행되는 기능 : 스토리 부분에서 구현하기 까다로운 시각적인 UI를 구현할 때 사용
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomNumLabel.text = "Hello, World\nWelcome"
        randomNumLabel.textAlignment = .center
        randomNumLabel.backgroundColor = .systemGray
        randomNumLabel.numberOfLines = 2
        randomNumLabel.font = UIFont.boldSystemFont(ofSize: 20)
        randomNumLabel.textColor = .white
        randomNumLabel.layer.cornerRadius = 10
        randomNumLabel.clipsToBounds = true
        
        checkBtn.backgroundColor = UIColor.systemTeal
        checkBtn.setTitle("Get the lucky number", for: .normal)
        checkBtn.setTitle("Shot Shot", for: .highlighted)
        checkBtn.layer.cornerRadius = 10
        checkBtn.setTitleColor(UIColor.white, for: .normal)
        
    }
    
    @IBAction func checkBtnTouched(_ sender: UIButton) {
        let nubmer = Int.random(in: 1...100)
        randomNumLabel.text = "The lucky number is \(nubmer)."
    }
    
}
