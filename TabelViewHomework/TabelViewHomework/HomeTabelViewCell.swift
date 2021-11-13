//
//  TabelViewCell.swift
//  TabelViewHomework
//
//  Created by Afrah Omar on 07/04/1443 AH.
//

import Foundation
import UIKit


class HomeTabelViewCell: UITableViewCell {
    
    @IBOutlet weak var lblDnknName: UILabel!
    @IBOutlet weak var lblDnknPrice: UILabel!
    @IBOutlet weak var imgDnkn: UIImageView!

func setupCell(photo: UIImage, name: String, price: Double ) {
    imgDnkn.image = photo
    lblDnknName.text = name

    lblDnknPrice.text = "\(price) SAR "
}
}
