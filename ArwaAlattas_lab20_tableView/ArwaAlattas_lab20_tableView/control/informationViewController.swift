//
//  informationViewController.swift
//  ArwaAlattas_lab20_tableView
//
//  Created by Arwa Alattas on 07/04/1443 AH.
//

import Foundation
import UIKit
class informationViewController : UIViewController{
    
    
    @IBOutlet weak var lableName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var describtion: UITextView!
    
    var selectFruit:Detiles?
//  var labelContent = ""
//    var imageViewContent = UIImage(named: "image1")
//    var describtionContent = ""
    
        override func viewDidLoad() {
//            lableName.text = labelContent
//            imageView.image = imageViewContent
//            describtion.text = describtionContent
            if let fruit = selectFruit{
               
                lableName.text = fruit.name
                imageView.image = UIImage(named: fruit.image) 
                describtion.text = fruit.description
                
            }
    }
    
    
    
    
    
    
    
}
