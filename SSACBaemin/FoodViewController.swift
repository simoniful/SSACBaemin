//
//  FoodViewController.swift
//  SSACBaemin
//
//  Created by Sang hun Lee on 2021/10/01.
//

import UIKit

class FoodViewController: UIViewController {
    @IBOutlet var userSearchTextField: UITextField!
    @IBOutlet var tagBtn1: UIButton!
    @IBOutlet var tagBtn2: UIButton!
    @IBOutlet var tagBtn3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonUISetting(btnOutletName: tagBtn1, btnTitle: "초콜릿")
        buttonUISetting(btnOutletName: tagBtn2, btnTitle: "사탕")
        buttonUISetting(btnOutletName: tagBtn3, btnTitle: "츄러스")
    }
    
    // btnOutletName: 외부 매개변수(parameter) - 공간
    // btn: 내부 매개변수(parameter) - 공간
    // tagBtn1: 전달인자(argument) - 값
    // _를 활용하여 외부 매개 변수 생략 가능 - 와일드 카드 식별자
    // 매개 변수 기본 값 설정 가능
    // 오버로딩
    func buttonUISetting(btnOutletName btn: UIButton, btnTitle title: String = "디저트") {
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.cornerRadius = 10
        btn.backgroundColor = .white
    }
    
    @IBAction func foodTagBtnClicked(_ sender: UIButton) {
        // 버튼에 이미지만 들어있는 경우 타이틀이 nil일 수 있으므로 옵셔널로 구성된 currentTitle
        userSearchTextField.text = sender.currentTitle!
    }
    
    // didEndOnExit
    @IBAction func keyboardReturnKeyClicked(_ sender: UITextField) {
        // 키보드 내리기
        view.endEditing(true)
    }
    
    
}
