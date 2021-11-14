//
//  description.swift
//  DoaaALageel_tableView
//
//  Created by Dua'a ageel on 09/04/1443 AH.
//

import UIKit

class description: UIViewController {
    
    @IBOutlet weak var lableName: UILabel!
    
    
    @IBOutlet weak var myimages: UIImageView!
    
    
    @IBOutlet weak var lableDescription: UILabel!
    var lableNameSesone = ""
    var myimagesView = UIImage(named: "Summer")!
    var lableDec = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lableName.text = lableNameSesone
        myimages.image = myimagesView
        lableDescription.text = lableDec
       
    }
   
    
    
    

}
