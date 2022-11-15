//
//  ViewController.swift
//  alarm clock
//
//  Created by 김유빈 on 2022/11/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var IbCurrentTime: UILabel!
    @IBOutlet var IbPickerTime: UILabel!
    @IBOutlet var UIView: UIView!
    @IBOutlet var countLabel: UILabel!
    
    let colorList: [UIColor] = [
        .red,
        .blue,
        .yellow,
        .systemPink,
        .brown,
        .lightGray,
        .cyan,
        .purple,
        .orange
    ]
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0 // 타이머 간격 값
    var alarmTime: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 타이머 설정
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        DispatchQueue.global().async {
            for color in self.colorList {
                DispatchQueue.main.async {
                    self.UIView.backgroundColor = color
                }
                sleep(1)
            }
        }
        
        DispatchQueue.global().async {
            for i in 1...100 {
                DispatchQueue.main.async {
                    self.countLabel.text = "count : \(i)"
                }
                sleep(1)
            }
        }
        
            
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        // 데이트피커 액션함수
        let datePickerView = sender
        
        let formatter = DateFormatter()
        // 날짜를 출력하기 위해 클래스 상수 선언
        
        formatter.dateFormat = "yyyy-MM-dd hh:mm aaa"
        // 년-월-일 시:분 요일
        IbPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        
        alarmTime = formatter.string(from: datePickerView.date) // 알람이 울리는 시간
    }
    
    @objc func updateTime() {
        let date = NSDate() // 현재시간 가져오기
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm aaa"
        IbCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        
        let currentTime = formatter.string(from: date as Date) // 현재시간
        
        
        if (alarmTime == currentTime) {
            view.backgroundColor = UIColor.darkGray
        } else {
            view.backgroundColor = UIColor.white
        }
    }
}
