//
//  ViewControllerShow.swift
//  TabelViewHomework
//
//  Created by Afrah Omar on 07/04/1443 AH.
//

import Foundation
import UIKit

class ViewControllerShow: UIViewController {
    
    var titleName = ""
    @IBOutlet weak var titleForName: UILabel!
    
    @IBOutlet weak var imageForDnkn: UIImageView!
    
    @IBOutlet weak var descriptionForDnkn: UILabel!
    var descriptionDunkn = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleForName.text = titleName
        switch titleName {
        case "ICED LATTE" : imageForDnkn.image = UIImage(named: "ICED LATTE")
            descriptionForDnkn.text = "Made with milk blended with our rich, freshly ground and brewed espresso"
        case "DONUTS" : imageForDnkn.image = UIImage(named: "DONUTS")
            descriptionForDnkn.text = "Our delicious donuts come in a variety of flavors and are free of artificial dyes, so there’s a favorite for everyone."
        case "croissant-cheese" : imageForDnkn.image = UIImage(named: "croissant-cheese")
            descriptionForDnkn.text = "Made with our freshly products of dough and cheese "
        case  "LATTE" : imageForDnkn.image = UIImage(named:  "LATTE")
            descriptionForDnkn.text = "Made with steamed, frothy milk, blended with our rich, freshly ground and brewed espresso"
        case "Black Coffee" : imageForDnkn.image = UIImage(named: "Black Coffee")
            descriptionForDnkn.text = "BREWED SLOW. SERVED FAST."
        case  "Packaged Coffe" : imageForDnkn.image = UIImage(named:  "Packaged Coffe")
            descriptionForDnkn.text = "Enjoy your favorite coffee at home"
            
        default:
            
            "NOTHING"        }
    }
}
