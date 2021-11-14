

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var nameOfFruits: UILabel!
    
    var nameFruits = ""
    
    @IBOutlet weak var discriptionOfFruits: UILabel!
    
    var discriptionFruits = ""
    
    @IBOutlet weak var viewOfFruits: UIImageView!
    
    var image = UIImage(named: "")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfFruits.text = nameFruits
        discriptionOfFruits.text = discriptionFruits
        viewOfFruits.image = image

    }
    
  
}
