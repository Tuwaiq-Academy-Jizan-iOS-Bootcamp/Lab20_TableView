//
//  DetailsViewController.swift
//  DimitriSMITH_TableViewDemo
//
//  Created by Dimitri SMITH on 11/11/2021.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet var theLabelOfSecondVC: UILabel!
    var textForLabel: String = ""
    
    @IBOutlet var theImage: UIImageView!
    var imageForImageView: UIImage = UIImage(named: "SwiftLogo")!
    
    
    @IBOutlet var descriptionLabel: UILabel!
    var descriptionForLabel: String = ""
    
    
    
    override func viewDidLoad() {
        theLabelOfSecondVC.text = textForLabel
        theImage.image = imageForImageView
        descriptionLabel.text = descriptionForLabel
    }
    
    
    
    
}
