//
//  TableViewCell.swift
//  EhabHakami_TableViewHomeWork
//
//  Created by Ehab Hakami on 07/04/1443 AH.
//

import UIKit

class cellvc: UITableViewCell {

    @IBOutlet weak var imageVInTableView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
