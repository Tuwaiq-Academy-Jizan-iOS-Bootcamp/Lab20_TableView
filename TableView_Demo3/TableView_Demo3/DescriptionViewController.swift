import UIKit

class DescriptionViewController: UIViewController
{
    @IBOutlet var playersImages: UIImageView!
    @IBOutlet var playersNamesLabel: UILabel!
    @IBOutlet var playersDescriptionLabel: UILabel!
    
    var firstDataConnectorfromVc1toVc2 = ""
    var secondDataConnectorfromVc1toVc2 = ""

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        playersImages.image = UIImage(named: firstDataConnectorfromVc1toVc2)
        playersNamesLabel.text = firstDataConnectorfromVc1toVc2
        playersDescriptionLabel.text = secondDataConnectorfromVc1toVc2
    }
}
