//
//  DisplayViewController2.swift
//  Hanan_lab20
//
//  Created by Hanan Somily on 13/11/2021.
//

import Foundation
import UIKit

class DisplayViewController2: UIViewController {
    
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var displayImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    //var car:Jeep?
    var car:Jeep?
//    var nameOfCar = ""
//    var imageOfCar = UIImage()
//    var detils = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let item = car {
        titleLb.text = item.title
        displayImageView.image = item.photo
        descriptionLabel.text = item.description
        }
    }
   
}
