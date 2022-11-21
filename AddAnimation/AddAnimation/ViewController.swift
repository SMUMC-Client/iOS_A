//
//  ViewController.swift
//  AddAnimation
//
//  Created by 김유빈 on 2022/11/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        UIView.animate(withDuration: 3) {
            self.imageView.center = self.view.center
        }
    }
    
    @IBAction func rotatebutton(_ sender: Any) {
        UIView.animate(withDuration: 3) {
            let scale = CGAffineTransform(rotationAngle: .pi)
            self.imageView.transform = scale
        } completion: { inished in
            UIView.animate(withDuration: 2) {
                self.imageView.transform = .identity
            }
        }
    }
    
    @IBAction func plusbutton(_ sender: Any) {
        UIView.animate(withDuration: 3) {
            let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
            self.imageView.transform = scale
        }
    }
}

