//
//  TheStoreCell.swift
//  MaramFaqih_Lab20_TableView
//
//  Created by meme f on 08/04/1443 AH.
//

import UIKit

class TheStoreCell: UITableViewCell {
    @IBOutlet weak var prodectImage: UIImageView!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    var descriptionT = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func fillCell(imageTitle:String,title:String,subTitle:String,description:String){
        prodectImage.image = UIImage(named: "\(imageTitle)")
        
       titleLabel.text = title
      subTitleLabel.text = subTitle
        descriptionT = description
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
