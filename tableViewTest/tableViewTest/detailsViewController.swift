//
//  detailsViewController.swift
//  tableViewTest
//
//  Created by يوسف جابر المالكي on 06/04/1443 AH.
//


import Foundation
 import UIKit

 class detailsViewController: UIViewController {


     @IBOutlet var lableVS2: UILabel!
     var textForLabel: String = ""

     @IBOutlet var imageVS2: UIImageView!
     var imageForImageView: UIImage = UIImage(named: "Thief")!


     @IBOutlet var descriplableVS2: UILabel!
     var descriptionForLabel: String = ""



     override func viewDidLoad() {
         lableVS2.text = textForLabel
         imageVS2.image = imageForImageView
         descriplableVS2.text = descriptionForLabel
     }




 }
