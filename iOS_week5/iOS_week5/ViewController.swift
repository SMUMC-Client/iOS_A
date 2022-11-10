//
//  ViewController.swift
//  iOS_week5
//
//  Created by 김유빈 on 2022/10/31.
//


import UIKit
import Lottie

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var tableview: UITableView!
    
    let refreshControl = UIRefreshControl()
    
    lazy var lottieView: LottieAnimationView = {
        let animationView = LottieAnimationView(name: "refreshLottie")
        animationView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        let centerX = UIScreen.main.bounds.width / 2
        animationView.center = CGPoint(x: centerX, y: 40)
        animationView.contentMode = .scaleAspectFit
        animationView.stop()
        animationView.isHidden = true
        return animationView
    }()

    func initRefreshControl() {
        refreshControl.addSubview(lottieView)
        refreshControl.tintColor = .clear
        refreshControl.addTarget(self,
            action: #selector(refreshTableView(refreshControl:)),
            for: .valueChanged
        )
            
        tableview.refreshControl = refreshControl
    }
        
    @objc func refreshTableView(refreshControl: UIRefreshControl) {
        print("새로고침!!")
        lottieView.isHidden = false
        lottieView.play()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.lottieView.isHidden = true
            self.lottieView.stop()
            self.tableview.reloadData()
            refreshControl.endRefreshing()
        }
    }
    
    var TitleData: [String] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21"]
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return TitleData.count
    }
    
    //as를 이용한 타입 캐스팅을 통해 myTableViewCell을 불러옴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myTableViewCell
            
        cell.titleLabel.text = ("\(TitleData[indexPath.row])주차 워크북")
        
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
        initRefreshControl()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        let backBarButtonItem = UIBarButtonItem(title: "메모", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = backBarButtonItem
        backBarButtonItem.tintColor = UIColor.darkGray
    }

    @IBAction func writeButton(_ sender: UIButton) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            TitleData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
