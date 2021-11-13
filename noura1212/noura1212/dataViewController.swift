//
//  dataViewController.swift
//  noura1212
//
//  Created by NoON .. on 07/04/1443 AH.
//

import UIKit

class dataViewController: UIViewController {
    var name = ""
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var subTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitle.text = name
        image.image = UIImage(named: name)
        if labelTitle.text == "lee min ho" {
            subTitle.text = "korean actor"
        }else if labelTitle.text == "aisha" {
                subTitle.text = "turkish actoress"
        }else if labelTitle.text == "burak" {
            subTitle.text = "turkish actor"
        }else if labelTitle.text == "deepika" {
            subTitle.text = "indiah actoress"
        }else if labelTitle.text == "KimSeon" {
            subTitle.text = "korean actor"
    }else if labelTitle.text == "can yaman" {
        subTitle.text = "turkish actor"
    }else if labelTitle.text == "handa" {
        subTitle.text = "turkish actoress"
    }else if labelTitle.text == "song kand" {
        subTitle.text = "korean actor"
    }else if labelTitle.text == "hwang in-yeop" {
        subTitle.text = "korean actor"
    }
}
}
