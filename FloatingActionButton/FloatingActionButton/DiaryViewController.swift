//
//  DiaryViewController.swift
//  FloatingActionButton
//
//  Created by 김진웅 on 2022/08/13.
//

import UIKit

class DiaryViewController: UIViewController {

    @IBOutlet weak var applyButton: UIButton!
    
    @IBOutlet weak var diaryTextView: UITextView!
    
    @IBOutlet weak var diaryDatePicker: UIDatePicker!
    
    private var diaryDate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diaryTextViewStyle()
        diaryTextView.delegate = self
    }
    
    // diaryTextView 스타일 지정
    private func diaryTextViewStyle() {
        diaryTextView.layer.borderWidth = 3.0
        diaryTextView.layer.cornerRadius = 10
        diaryTextView.layer.borderColor = UIColor.lightGray.cgColor
        diaryTextView.text =  " 오늘의 일기"
        diaryTextView.textColor = UIColor.lightGray
    }
    
    // 빈 화면을 터치했을 때 키보드가 사라지게끔..
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.diaryTextView.resignFirstResponder()
        }
    
    // 일기 날짜 바꾸기
    @IBAction func changeDiaryDate(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd EEE"
        formatter.locale = Locale(identifier: "ko_KR")
        diaryDate = formatter.string(from: datePickerView.date)
        print(">>> 일기 날짜 : \(diaryDate)")
    }
    // 저장 버튼을 눌렀을 때, 모달이 사라지면서 정보를 저장
    @IBAction func applyButtonPressed(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
}

// textview의 placeholder 지정, 글씨를 입력하면 원래 글씨 색으로 출력
extension DiaryViewController: UITextViewDelegate {
    
    func textViewDidEndEditing(_ textView: UITextView) {
            if diaryTextView.text.isEmpty {
                diaryTextView.text = " 오늘의 일기"
                diaryTextView.textColor = UIColor.lightGray
            }

        }
    func textViewDidBeginEditing(_ textView: UITextView) {
            if diaryTextView.textColor == UIColor.lightGray {
                diaryTextView.text = nil
                diaryTextView.textColor = UIColor.label
            }
        }

}
