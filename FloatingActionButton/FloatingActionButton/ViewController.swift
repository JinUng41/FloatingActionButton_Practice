//
//  ViewController.swift
//  FloatingActionButton
//
//  Created by 김진웅 on 2022/08/11.
//

import UIKit

class ViewController: UIViewController {
    
    // 스택뷰와 버튼 뷰컨트롤러에 연결
    @IBOutlet weak var buttonView: UIStackView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    // hidden 속성으로 숨겨둔 버튼 배열로 저장
    lazy var buttons: [UIButton] = [self.firstButton, self.secondButton, self.thirdButton]
    
    var isShowFlag: Bool = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

