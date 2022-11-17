//
//  SignUpViewController.swift
//  iOS_week7
//
//  Created by 김유빈 on 2022/11/07.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signupButtonDidTap(_ sender: Any) {
        guard let name = nameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        // "키" : "값"
        UserDefaults.standard.set(password, forKey: name)
        
        print("이름: \(name), 비밀번호: \(password)")
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancelButtonDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
