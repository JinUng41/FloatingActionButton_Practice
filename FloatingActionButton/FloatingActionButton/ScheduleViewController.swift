//
//  ScheduleViewController.swift
//  FloatingActionButton
//
//  Created by 김진웅 on 2022/08/13.
//

import UIKit

class ScheduleViewController: UIViewController {

    @IBOutlet weak var titleLabel: UITextField!
    
    @IBOutlet weak var startDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
        
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyy-MM-dd HH:mm EEE"
        startDateLabel.text = formatter.string(from: datePickerView.date)
    }
}
