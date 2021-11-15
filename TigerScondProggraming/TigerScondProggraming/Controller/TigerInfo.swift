//
//  TigerInfo.swift
//  TigerScondProggraming
//
//  Created by Yasir Hakami on 14/11/2021.
//

import Foundation
import UIKit


class TigerInfo: ViewController{
    
    
    var vcInfo = ""
    var vcImage = UIImage(named: "SwiftLogo")
    var vcName = ""
    
    @IBOutlet weak var nameOfTiger: UILabel!
    @IBOutlet weak var imageOfTiger: UIImageView!
    @IBOutlet weak var infoAboutTiger: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageOfTiger.image = vcImage
        nameOfTiger.text = vcName
        infoAboutTiger.text = vcInfo
        
        
    }
}
