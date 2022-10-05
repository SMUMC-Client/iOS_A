//
//  ViewController.swift
//  LifeCycle
//
//  Created by 김유빈 on 2022/10/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstTextField: UITextField!
    @IBOutlet var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func plusButtonDidTap(_ sender: UIButton) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        // 덧셈을 해서 다음 뷰에 넘기는 로직
        guard let firstNumber = firstTextField.text else { return }
        guard let secondNumber = secondTextField.text else { return }
        
        // 덧셈 과정과 결과 담기
        secondViewController.nameString = firstNumber + " + " + secondNumber + " = "
        secondViewController.resultString = String(Int(firstNumber)! + Int(secondNumber)!)
        
        /*
        let result = Int(firstNumber)! + Int(secondNumber)!
        secondViewController.resultString = String(result) // 덧셈의 결과를 담는다
        */
        
        present(secondViewController, animated: true)
    }
    
    @IBAction func minusButtonDidTap(_ sender: UIButton) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        // 뺄셈을 해서 다음 뷰에 넘기는 로직
        guard let firstNumber = firstTextField.text else { return }
        guard let secondNumber = secondTextField.text else { return }
        
        // 뺄셈 과정과 결과 담기
        secondViewController.nameString = firstNumber + " - " + secondNumber + " = "
        secondViewController.resultString = String(Int(firstNumber)! - Int(secondNumber)!)
        
        present(secondViewController, animated: true)
    }
    
    @IBAction func multiplyButtonDidTap(_ sender: UIButton) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        // 곱셈을 해서 다음 뷰에 넘기는 로직
        guard let firstNumber = firstTextField.text else { return }
        guard let secondNumber = secondTextField.text else { return }
        
        // 곱셈 과정과 결과 담기
        secondViewController.nameString = firstNumber + " * " + secondNumber + " = "
        secondViewController.resultString = String(Int(firstNumber)! * Int(secondNumber)!)
        
        present(secondViewController, animated: true)
    }
    
    @IBAction func divideButtonDidTap(_ sender: UIButton) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        // 나눗셈을 해서 다음 뷰에 넘기는 로직
        guard let firstNumber = firstTextField.text else { return }
        guard let secondNumber = secondTextField.text else { return }
        
        // 나눗셈 과정과 결과 담기
        secondViewController.nameString = firstNumber + " / " + secondNumber + " = "
        secondViewController.resultString = String(Int(firstNumber)! / Int(secondNumber)!)
        
        present(secondViewController, animated: true)
    }
    
    @IBAction func remainderButtonDidTap(_ sender: UIButton) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        guard let firstNumber = firstTextField.text else { return }
        guard let secondNumber = secondTextField.text else { return }
        
        // 나머지 계산 과정과 결과 담기
        secondViewController.nameString = firstNumber + " % " + secondNumber + " = "
        secondViewController.resultString = String(Int(firstNumber)! % Int(secondNumber)!)
        
        present(secondViewController, animated: true)
    }
    
}
