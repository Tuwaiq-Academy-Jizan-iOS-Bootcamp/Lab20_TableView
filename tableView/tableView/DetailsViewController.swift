//  tableView
//
//  Created by Nasser Aseeri on 09/04/1443 AH.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet var lablName: UILabel!
    var textForLabel: String = ""
    
    @IBOutlet var imageName: UIImageView!
    var imageForImageView: UIImage = UIImage(named: "SwiftLogo")!
    
    
    @IBOutlet var descripLable: UILabel!
    var descriptionForLabel: String = ""
    
    
    
    override func viewDidLoad() {
        lablName.text = textForLabel
        imageName.image = imageForImageView
        descripLable.text = descriptionForLabel
    }
    
    
    
    
}
