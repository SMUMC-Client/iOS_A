//
//  ViewController.swift
//  iOS_week6
//
//  Created by 김유빈 on 2022/10/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    let colorList: [UIColor] = [
        .red,
        .blue,
        .black,
        .yellow,
        .systemPink,
        .brown,
        .lightGray,
        .cyan,
        .darkGray,
        .purple,
        .orange
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        threadTest()
    }
    
    func threadTest() {
        DispatchQueue.global().async {
            /*
            for i in 1...10 {
                print(i)
                usleep(100000)
            }
            */
            for color in self.colorList {
                DispatchQueue.main.async {
                    self.firstView.backgroundColor = color
                }
                sleep(1)
            }
        }
        
        DispatchQueue.global().async {
            /*
            for i in 11...20 {
                print(i)
                usleep(100000)
            }
            */
            for color in self.colorList.reversed() {
                DispatchQueue.main.async {
                    self.secondView.backgroundColor = color
                }
                sleep(1)
            }
        }
    }
}

