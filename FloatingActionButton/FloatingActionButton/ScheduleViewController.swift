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
    }
    
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
