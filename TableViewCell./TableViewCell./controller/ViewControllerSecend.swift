

import Foundation
import UIKit
class ViweContrllerSecend:UIViewController{
   
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labelDescription: UILabel!
    //add varibles type sama type (struct)...add ?(optioal)
    var selectVegetable:Vegetable?
    
//    var labelcontent = ""
//    var Description = ""
//    var imageb = UIImage(named: "image1")
    
    override func viewDidLoad() {
//        labelTitle.text = labelcontent
//        image.image = imageb
//        labelDescription.text = Description
        //becouse optional
        if let vegetable = selectVegetable{
          labelTitle.text = vegetable.name
          labelDescription.text = vegetable.description
            image.image = UIImage(named: vegetable.image)
            
        }
        
        }
    
}
