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
    var theTopic = ""
    @IBOutlet weak var imageView: UIImageView!
    var theImage = UIImage(named: "")
    @IBOutlet weak var describeTitle: UILabel!
    var theDescription = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topicTitle.text = theTopic
        describeTitle.text = theDescription
 
        imageView.image = theImage
        
 
    }
}
