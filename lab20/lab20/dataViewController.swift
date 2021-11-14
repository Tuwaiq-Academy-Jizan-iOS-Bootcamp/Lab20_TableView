//
//  dataViewController.swift
//  lab20
//
//  Created by NoON .. on 08/04/1443 AH.
//

import UIKit

class dataViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    var name = ""
    @IBOutlet weak var imageName: UIImageView!
   var image = UIImage(named: "")
    @IBOutlet weak var discriptionLabel: UILabel!
    var discript = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = name
        discriptionLabel.text = discript
        imageName.image = image
    }
    }
   
