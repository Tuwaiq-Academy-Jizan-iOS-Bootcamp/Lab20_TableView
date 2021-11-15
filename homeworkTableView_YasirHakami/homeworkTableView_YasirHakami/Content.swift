//
//  Content.swift
//  homeworkTableView_YasirHakami
//
//  Created by Yasir Hakami on 12/11/2021.
//

import UIKit

class Content: UITableViewCell {

    @IBOutlet weak var lbldec: UILabel!
    @IBOutlet weak var lplname: UILabel!
    @IBOutlet weak var imagee: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
