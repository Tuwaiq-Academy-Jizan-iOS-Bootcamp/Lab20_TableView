//
//  ClassTabelViewTableViewCell.swift
//  HananSomily_20
//
//  Created by Hanan Somily on 12/11/2021.
//

import UIKit


class ClassTabelViewTableViewCell: UITableViewCell {
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var photoElement: UIImageView!
    
    
     var car:Jeep?

    override func awakeFromNib() {
        super.awakeFromNib()
    
        titleLabel.text = car?.title
        discriptionLabel.text = car?.description
        photoElement.image = car?.photo
    }
    
    func printElement(name:String , viewElement:UIImage , describe:String){
        titleLabel.text = name
        photoElement.image = viewElement
        discriptionLabel.text = describe

    }
   
    }


