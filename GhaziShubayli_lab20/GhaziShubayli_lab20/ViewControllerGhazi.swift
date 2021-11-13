//
//  ViewControllerGhazi.swift
//  GhaziShubayli_lab20
//
//  Created by ماك بوك on 08/04/1443 AH.
//

import UIKit

class ViewControllerGhazi: UIViewController {
    var reciver = ""
    
    @IBOutlet weak var lastTitle: UILabel!
    @IBOutlet weak var lastImage: UIImageView!
    @IBOutlet weak var descreption: UILabel!
    
    //    ["mango","moz","ambarod","ananas", "caraz","enab","frawla","habhab","khmethra","limon","roman"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lastImage.image = UIImage(named: reciver)
        lastTitle.text = reciver
        descreption.text = "\(reciver) is a good Fruit"
        
    }
    
    
}


