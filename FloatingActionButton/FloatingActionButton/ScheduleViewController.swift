//
//  ScheduleViewController.swift
//  FloatingActionButton
//
//  Created by 김진웅 on 2022/08/13.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var applyButton: UIButton!
    
    @IBOutlet weak var memoLabel: UITextField!
    
    @IBOutlet weak var exitDatePicker: UIDatePicker!
    
    private var scheduleTitle: String!
    private var startDate: String!
    private var exitDate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oneHourPlus()
        titleLabel.delegate = self
        memoLabel.delegate = self
    }
    
    // 입력이 끝나고 화면 빈 곳을 터치했을 때 키보드가 사라지게끔..
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.titleLabel.resignFirstResponder()
        self.memoLabel.resignFirstResponder()
    }
    
    // 기본 종료 시간을 현재 시간에서 한시간 후로 설정하기 위해..
    private func oneHourPlus() {
        exitDatePicker.date = Date()+3600
    }
    
    // 시작 날짜 지정
    @IBAction func changeStartDate(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        formatter.locale = Locale(identifier: "ko_KR")
        startDate = formatter.string(from: datePickerView.date)
        print(">>> 시작 날짜 : " + startDate)
    }
    
    // 종료 날짜 지정
    @IBAction func changeExitDate(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        formatter.locale = Locale(identifier: "ko_KR")
        exitDate = formatter.string(from: datePickerView.date)
        print(">>> 종료 날짜 : " + exitDate)
    }
    
    @IBAction func applyButtonPressed(_ sender: Any) {
        
        scheduleTitle = titleLabel.text
        print(scheduleTitle)
        // 모달 닫는 동작
        self.dismiss(animated: true, completion: nil)
    }
    
}

// 키보드에서 done이 눌렸을 때 키보드가 사라지게 함
extension ScheduleViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        titleLabel.endEditing(true)
        memoLabel.endEditing(true)
        return true
    }
}
