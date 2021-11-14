//
//  ViewControllerTwo.swift
//  Bushra Barakat_Lab20
//
//  Created by Bushra Barakat on 08/04/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo : UIViewController {
    var named = ""
    var allDetails = ""
    var imaged = ""
    @IBOutlet weak var lableNameFlower: UILabel!
    @IBOutlet weak var  lableDetailsFlower: UILabel!
    @IBOutlet weak var  imageFlower: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lableNameFlower.text = named
        lableDetailsFlower.text = allDetails
        imageFlower.image = UIImage  (named: imaged)!
    
    
    }

}
    
    
    

