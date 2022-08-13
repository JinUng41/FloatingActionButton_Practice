//
//  ScheduleViewController.swift
//  FloatingActionButton
//
//  Created by 김진웅 on 2022/08/13.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UITextField!
    
    private var startDate: String!
    private var exitDate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func changeStartDate(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        formatter.locale = Locale(identifier: "ko_KR")
        startDate = formatter.string(from: datePickerView.date)
        print(">>> 시작 날짜 : " + startDate)
    }
    
    @IBAction func changeExitDate(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        formatter.locale = Locale(identifier: "ko_KR")
        exitDate = formatter.string(from: datePickerView.date)
        print(">>> 종료 날짜 : " + exitDate)
    }
    
}
