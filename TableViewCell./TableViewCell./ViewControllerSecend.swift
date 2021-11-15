

import Foundation
import UIKit
class ViweContrllerSecend:UIViewController{
   
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labelDescription: UILabel!
    
    var labelcontent = ""
    var Description = ""
    var imageb = UIImage(named: "image1")
    
    override func viewDidLoad() {
        labelTitle.text = labelcontent
        image.image = imageb
        labelDescription.text = Description
        
    }
}
