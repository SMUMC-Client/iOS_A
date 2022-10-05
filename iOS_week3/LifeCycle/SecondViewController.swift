//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by 김유빈 on 2022/10/03.
//

import UIKit

class SecondViewController: UIViewController {
    var nameString = "" // 계산 과정
    var resultString = "default 값" // 계산 결과가 담길 예정
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        nameLabel.text = nameString
        resultLabel.text = resultString
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewDidDisappear")
    }
    
}
