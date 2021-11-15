//
//  ViewControllerTwo.swift
//  trainingtableview
//
//  Created by Bushra Barakat on 09/04/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo: UIViewController{
    
    @IBOutlet weak var lableFlowerName: UILabel!
    @IBOutlet weak var imageFlower: UIImageView!
    @IBOutlet weak var lableFlowerDetails: UILabel!
    var selectFlower: Flower?
    
    
    
    override func viewDidLoad() {
       if let flower = selectFlower {
        lableFlowerName.text = flower.flowerName
        lableFlowerDetails.text = flower.flowerDetails
        imageFlower.image = UIImage (named: flower.flowerImage)
        }
    }
}
