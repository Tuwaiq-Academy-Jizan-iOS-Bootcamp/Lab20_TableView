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
    @IBOutlet weak var fruitImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    var selectedberray: Berry?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let berrey = selectedberray{
            fruitImage.image = UIImage(named: berrey.photo) 
            labelToTableVieow.text = berrey.name
            descriptionLabel.text = berrey.descriptions
        }
    }
}
