
import Foundation
import UIKit
class DetailsViewController:UIViewController {
@IBOutlet weak var NameCity: UILabel!
    var name = ""
@IBOutlet weak var imageAB: UIImageView!
    var image = ""
@IBOutlet weak var Description: UILabel!
var descript = ""

override func viewDidLoad() {
super.viewDidLoad()
    NameCity.text = name
    imageAB.image = UIImage(named: image)
    Description.text = descript
    }
}
