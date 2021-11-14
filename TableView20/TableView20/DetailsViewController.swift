//
//  DetailsViewController.swift
//  TableView20
//
//  Created by grand ahmad on 08/04/1443 AH.
//

import UIKit
class DetalisViewController: UIViewController {
    var model: Model?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = model?.title
        imageView.image = UIImage(named: model!.imageName)
        descriptionLabel.text = model?.description
    }
}

