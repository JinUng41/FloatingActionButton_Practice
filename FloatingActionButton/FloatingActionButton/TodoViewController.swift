//
//  TodoViewController.swift
//  FloatingActionButton
//
//  Created by 김진웅 on 2022/08/13.
//

import UIKit

class TodoViewController: UIViewController {

    @IBOutlet weak var applyButton: UIButton! // 저장 버튼
    @IBOutlet weak var titleLabel: UITextField! // 할 일 제목
    @IBOutlet weak var todoDatePicker: UIDatePicker! // 할 일 datePicker
    
    private var todoTitle: String!
    private var todoDate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func changeTodoDate(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd EEE"
        formatter.locale = Locale(identifier: "ko_KR")
        todoDate = formatter.string(from: datePickerView.date)
        print(">>> 날짜 : " + todoDate)
    }
    
    @IBAction func applyButtonPressed(_ sender: Any) {
        
        todoTitle = (titleLabel.text)
        print(todoTitle)
        // 모달 닫는 동작
        self.dismiss(animated: true, completion: nil)
    }
}
