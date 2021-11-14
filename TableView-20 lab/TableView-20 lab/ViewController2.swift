//
//  ViewController2.swift
//  TableView-20 lab
//
//  Created by grand ahmad on 09/04/1443 AH.
//

import Foundation
import UIKit
class ViewController2:UIViewController{
    
    @IBOutlet weak var imageKing: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var title1 = ""
    var description2 = ""
    var image1 = UIImage()
    override func viewDidLoad() {
        imageKing.image = image1
        titleLabel.text = title1
        descriptionLabel.text = description2
    }
}
