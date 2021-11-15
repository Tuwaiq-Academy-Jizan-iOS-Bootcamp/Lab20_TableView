//
//  TableViewTowCell.swift
//  EhabHakami_TableViewHomeWork
//
//  Created by Ehab Hakami on 07/04/1443 AH.
//

import UIKit

class TableViewConect: UITableViewCell {
    
    @IBOutlet weak var imageViewInCell: UIImageView!
    
    @IBOutlet weak var labelNameCar: UILabel!
    
    @IBOutlet weak var labelColerName: UILabel!
    
    @IBOutlet weak var labelIdnumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
