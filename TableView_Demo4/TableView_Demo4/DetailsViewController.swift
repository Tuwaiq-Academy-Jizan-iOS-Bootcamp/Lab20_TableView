//
//  DetailsViewController.swift
//  TableView_Demo4
//
//  Created by حمد الحريصي on 14/11/2021.
//

import UIKit

class DetailsViewController: UIViewController
{
var nameOfPlayers = ""
var imageOfPlayes = UIImage(named: "")
var detilsOfPlayers = ""
    
    @IBOutlet var titelLabel: UILabel!
    
    @IBOutlet var playerImage: UIImageView!
    

    @IBOutlet var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titelLabel.text = nameOfPlayers
        detailsLabel.text = detilsOfPlayers
        playerImage.image = imageOfPlayes
    }
}
