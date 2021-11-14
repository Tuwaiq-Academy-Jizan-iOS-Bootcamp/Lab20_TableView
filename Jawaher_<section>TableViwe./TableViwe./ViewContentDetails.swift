//
//  ViewContentDetails.swift
//  TableViwe.
//
//  Created by Jawaher Mohammad on 09/04/1443 AH.
//

import Foundation
import UIKit
class ViewContentDetails:UIViewController{
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var imageFromTableView: UIImageView!
    @IBOutlet weak var contentDescription: UITextView!
    
    var receivedImage = UIImage()
    var receivedTitel = ""
    var receivedSupTitle = ""
    override func viewDidLoad() {
        titleLable.text = receivedTitel
        imageFromTableView.image = receivedImage
        contentDescription.text = receivedSupTitle
       // showDetails()
    }
}
