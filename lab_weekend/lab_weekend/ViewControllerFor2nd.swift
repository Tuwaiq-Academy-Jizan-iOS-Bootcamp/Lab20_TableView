//
//  ViewControllerFor2nd.swift
//  lab_weekend
//
//  Created by dahma alwani on 09/04/1443 AH.
//

import Foundation
import UIKit
// this for show details in this view controller

class ViewControllerFor2nd: UIViewController{
    
    @IBOutlet weak var topicTitle: UILabel!
//    var theTopic = ""
    @IBOutlet weak var imageView: UIImageView!
//    var theImage = ""
    @IBOutlet weak var describeTitle: UILabel!
//    var theDescription = ""
    var selectedItem:ContentElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = selectedItem {
//            itemImageView.image = UIImage(named: item.imageName)
            topicTitle.text = item.theName
            describeTitle.text = item.theDetails
//        topicTitle.text = theTopic
//        describeTitle.text = theDescription
//
//        imageView.image = theImage
//
 
    }
    }
}
