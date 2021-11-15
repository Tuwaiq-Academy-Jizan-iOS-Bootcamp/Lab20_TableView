//
//  ViewControllerShow.swift
//  TabelViewHomework
//
//  Created by Afrah Omar on 07/04/1443 AH.
//

import Foundation
import UIKit

class ViewControllerShow: UIViewController {
    
    
    @IBOutlet weak var titleForName: UILabel!
    @IBOutlet weak var imageForDnkn: UIImageView!
    @IBOutlet weak var descriptionForDnkn: UILabel!
    var descriptionDunkn = ""
    var theTitle = ""
    var image = UIImage(named: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        titleForName.text = theTitle
        imageForDnkn.image = image
        descriptionForDnkn.text = descriptionDunkn
    }
}
