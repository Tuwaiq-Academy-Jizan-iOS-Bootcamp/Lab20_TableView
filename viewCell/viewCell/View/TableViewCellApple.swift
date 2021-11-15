//
//  TableViewCellApple.swift
//  viewCell
//
//  Created by Abdulrhman Abuhyyh on 08/04/1443 AH.
//

import UIKit

class TableViewCellApple: UITableViewCell {

    @IBOutlet weak var lableTextSela: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var lableCellName: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
