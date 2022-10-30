//
//  ViewController.swift
//  iOS_week4
//
//  Created by 김유빈 on 2022/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var TitleData: [TitleDataModel] = [
            TitleDataModel(
                Title: "week1 workbook"
            ),
            TitleDataModel(
                Title: "week2 workbook"
            ),
            TitleDataModel(
                Title: "week3 workbook"
            ),
            TitleDataModel(
                Title: "week4 workbook"
            ),
            TitleDataModel(
                Title: "week5 workbook"
            ),
            TitleDataModel(
                Title: "week6 workbook"
            ),
            TitleDataModel(
                Title: "week7 workbook"
            ),
            TitleDataModel(
                Title: "week8 workbook"
            ),
            TitleDataModel(
                Title: "week9 workbook"
            ),
            TitleDataModel(
                Title: "week10 workbook"
            ),
            TitleDataModel(
                Title: "week11 workbook"
            ),
            TitleDataModel(
                Title: "week12 workbook"
            ),
            TitleDataModel(
                Title: "week13 workbook"
            ),
            TitleDataModel(
                Title: "week14 workbook"
            ),
            TitleDataModel(
                Title: "week15 workbook"
            ),
            TitleDataModel(
                Title: "week16 workbook"
            ),
            TitleDataModel(
                Title: "week17 workbook"
            ),
            TitleDataModel(
                Title: "week18 workbook"
            ),
            TitleDataModel(
                Title: "week19 workbook"
            ),
            TitleDataModel(
                Title: "week20 workbook"
            )
        ]
    
    @IBOutlet weak var tableview: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return TitleData.count
    }
    
    //as를 이용한 타입 캐스팅을 통해 myTableViewCell을 불러옴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myTableViewCell
            
        cell.titleLabel.text = TitleData[indexPath.row].Title
        
        /*
        if indexPath.row == 0 {
            cell.backgroundColor = .red
        }
        */
        
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
    
    struct TitleDataModel {
        let Title: String
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            TitleData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
