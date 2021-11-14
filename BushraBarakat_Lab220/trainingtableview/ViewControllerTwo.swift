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
    var flowerName = ""
    var flowerDescripation = ""
    var flowerImage = UIImage ()
    
    
    
    override func viewDidLoad() {
        lableFlowerName.text = flowerName
        lableFlowerDetails.text = flowerDescripation
        imageFlower.image = flowerImage
        
    }
}
