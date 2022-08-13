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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diaryTextViewStyle()
        diaryTextView.delegate = self
    }
    private func diaryTextViewStyle() {
        diaryTextView.layer.borderWidth = 3.0
        diaryTextView.layer.cornerRadius = 10
        diaryTextView.layer.borderColor = UIColor.lightGray.cgColor
        diaryTextView.text =  " 일기 추가"
        diaryTextView.textColor = UIColor.lightGray
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.diaryTextView.resignFirstResponder()
        }
    
    @IBAction func applyButtonPressed(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
}

extension DiaryViewController: UITextViewDelegate {
    
    func textViewDidEndEditing(_ textView: UITextView) {
            if diaryTextView.text.isEmpty {
                diaryTextView.text = " 일기 추가"
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
