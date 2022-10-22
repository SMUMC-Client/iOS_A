//
//  ViewController.swift
//  Memo
//
//  Created by 김유빈 on 2022/10/06.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableview: UITableView!
    let Title = ["week1 workbook","week2 workbook","week3 workbook"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Title.count
    }
    
    //as를 이용한 타입 캐스팅을 통해 myTableViewCell을 불러옴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myTableViewCell
            
            cell.titleLabel.text = Title[indexPath.row]
            
            return cell
    }
    
    //기존에 설정한 tableView에 delegate와 datasource 지정
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        let backBarButtonItem = UIBarButtonItem(title: "메모", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = backBarButtonItem
        backBarButtonItem.tintColor = UIColor.systemYellow
    }

    @IBAction func writeButton(_ sender: UIButton) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
}

