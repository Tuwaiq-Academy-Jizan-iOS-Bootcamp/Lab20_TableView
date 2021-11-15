//
//  ViweContrllerSecend.swift
//  lab20
//
//  Created by Ahlam Ahlam on 10/04/1443 AH.
//

import Foundation
import UIKit

class ViweContrllerSecend:UIViewController{
    
    
    @IBOutlet weak var tital: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var labelDescription: UILabel!
    var selectAPPSaudiaArabia:APPSaudiaArabia?
    
//    var labelcontent = ""
//    var Description = ""
//    var imageb = UIImage(named: "image1")
    
    override func viewDidLoad() {
//        labelTitle.text = labelcontent
//        image.image = imageb
//        labelDescription.text = Description
        //becouse optional
        if let APPSaudiaArabia = selectAPPSaudiaArabia{
          tital.text = APPSaudiaArabia.name
          labelDescription.text = APPSaudiaArabia.description
            image.image = UIImage(named: APPSaudiaArabia.image)
            
        }
        
        }
    
}
