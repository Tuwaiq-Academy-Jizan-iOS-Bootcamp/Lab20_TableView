//
//  TableViewCellData.swift
//  tableViewpic
//
//  Created by Abdulrhman Abuhyyh on 07/04/1443 AH.
//

import UIKit

class TableViewCellData: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLableTwo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
