//
//  DisplayViewController2.swift
//  HananSomily_20
//
//  Created by Hanan Somily on 12/11/2021.
//

import Foundation
import UIKit
class DisplayViewController2: UIViewController {
    
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var displayImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    //var car:Jeep?
    var nameOfCar = ""
    var imageOfCar = UIImage()
    var detils = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //titleLb.text = car?.title
       titleLb.text = nameOfCar
        //displayImageView.image = car?.photo
        displayImageView.image = imageOfCar
        //descriptionTextView.text = car?.description
        descriptionTextView.text = detils
//        titleLb.text = car.title
//        displayImageView.image = car.photo
//        descriptionTextView.text = car.description
//
    }
   
}
