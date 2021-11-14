//
//  theScundViewController.swift
//  tabelView
//
//  Created by Afaf Yahya on 06/04/1443 AH.
//

import Foundation
import UIKit
class TheScundViewController: UIViewController {

    @IBOutlet weak var labelToTableVieow: UILabel!
    var textForLap = ""
    @IBOutlet weak var fruitImage: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelToTableVieow.text = textForLap
        fruitImage.image = UIImage(named: textForLap)
        switch labelToTableVieow.text{
        case "Blueberry": descriptionLabel.text = "Blueberries, a shrubby plant that spreads wild in many countries of the world and is distinguished by the color of its blue fruits.  It contains proteins, fats, sugars and vitamins, and there are special chemical molecules, known as flavonoids, that open blood vessels."
        case "Cranberry": descriptionLabel.text = "The sharp currant is a small plant with red fruits that belongs to the heather family.  Its pungent taste is used in sauces or juices, and it is also used in the manufacture of jelly.  It is used in the preparation of cakes and in medicine."
        case "Rasberry": descriptionLabel.text = "Red berries are a rich source of many different vitamins and minerals, the most important of which are: Vitamin C, which is mainly associated with skin health and body functions."
        case "Strawberry": descriptionLabel.text = "trawberry is a plant species in the genus of rosemary.  It is called the fruit of grace, and the name is also given to the fruit.  It is one of the non-traditional fruit crops, desert, and desert, and the marriage of crops with great yield, exported, exported or fresh."
//
        default:
           print ("Non")
        }
    }
}
