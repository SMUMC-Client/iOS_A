//
//  myTableViewCell.swift
//  iOS_week4
//
//  Created by 김유빈 on 2022/10/25.
//

 import UIKit

 class myTableViewCell: UITableViewCell {

     @IBOutlet weak var titleLabel: UILabel!
     @IBOutlet weak var timeLabel: UILabel!
     @IBOutlet weak var editButton: UIButton!
     
     override func prepareForReuse() {
         titleLabel.text = nil
         timeLabel.text = nil
     }
     
     override func awakeFromNib() {
         super.awakeFromNib()
         // Initialization code
     }

     override func setSelected(_ selected: Bool, animated: Bool) {
         super.setSelected(selected, animated: animated)
         // Configure the view for the selected state
     }

 }
