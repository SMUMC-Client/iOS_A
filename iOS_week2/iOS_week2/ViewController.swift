//
//  ViewController.swift
//  iOS_week2
//
//  Created by 김유빈 on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func QRButton(_ sender: UIButton) {
        let vcName = self.storyboard?.instantiateViewController(withIdentifier: "SecondVCID")
                //vcName?.modalPresentationStyle = .automatic
                vcName?.modalPresentationStyle = .fullScreen // 전체화면으로 보이게 설정
                vcName?.modalTransitionStyle = .crossDissolve // 전환 애니메이션 설정
                self.present(vcName!, animated: true, completion: nil)
    }
}
