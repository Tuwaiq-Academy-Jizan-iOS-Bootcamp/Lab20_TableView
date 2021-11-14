//
//  ViewControllerForData.swift
//  tableViewpic
//
//  Created by Abdulrhman Abuhyyh on 07/04/1443 AH.
//

import UIKit

class ViewControllerForData: UIViewController {
    var titlName = ""
    var sAR = ""
    @IBOutlet weak var fristLabel: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var descriotionView: UITextView!
    @IBOutlet weak var srLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage.image = UIImage(named: titlName)
        fristLabel.text = titlName
        srLable.text = sAR
        
        if titlName == "AirPods Pro" {
            descriotionView.text = "As expected, the standard AirPods for 2021 adopt many of the design conventions of the more expensive AirPods Pro, including their shorter stems and horizontally aligned charging case."
        }
        if titlName == "IPhone 13 Pro Max" {
            descriotionView.text = "New Apple iPhone 13 Pro Max with FaceTime (256GB) - Sierra Blue"
        }
        if titlName == "Apple Watch" {
            descriotionView.text = "Apple Watch Series 6 (GPS, 44mm) - Blue Aluminium Case with Deep Navy Sport Band"
        }
        if titlName == "Apple iPad Pro" {
            descriotionView.text = "2021 Apple iPad Pro (11-inch, Wi-Fi, 128GB) - Space Grey (3rd Generation)"
        }
        if titlName == "Apple iPad Air" {
            descriotionView.text = "2020 Apple iPad Air (10.9-inch, Wi-Fi, 64GB) - Silver (4th Generation)"
        }
        if titlName == "Apple iMac" {
            descriotionView.text = "2021 Apple iMac (24-inch, Apple M1 chip with 8‑core CPU and 8‑core GPU, 4 ports, 8GB RAM, 512GB) - Green"
        }
        if titlName == "Apple MacBook" {
            descriotionView.text = "2021 Apple MacBook Pro (14-inch, Apple M1 Pro chip with 8‑core CPU and 14‑core GPU, 16GB RAM, 512GB SSD) - Silver"
        }
        if titlName == "Apple MacBook Air" {
            descriotionView.text = "2020 Apple MacBook Air with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD) - Silver"
        }
        if titlName == "Apple TV" {
            descriotionView.text = "The -Connectivity technology HDMI  -Brand Apple - -Resolution 4K -Display LED -Series MXGY2AE/A - Model 2021 -Colour Blak - Control Remote & Tuch"
        }
        if titlName == "New Apple AirTag" {
            descriotionView.text = "AirTag is a small and elegantly designed accessory that can be personalized with free engraving, and enables iPhone users to securely locate and keep track of their valuables using the Find My app"
        }
        if sAR == "AirPods Pro" {
            srLable.text = "SAR 799"
        }
        if sAR == "IPhone 13 Pro Max" {
            srLable.text = "SAR 5699"
        }
        if sAR == "Apple Watch" {
            srLable.text = "SAR 1799"
        }
        if sAR == "Apple iPad Pro" {
            srLable.text = "SAR 3499"
        }
        if sAR == "Apple iPad Air" {
            srLable.text = "SAR 2549"
        }
        if sAR == "Apple iMac" {
            srLable.text = "SAR 7939"
        }
        if sAR == "Apple MacBook Pro" {
            srLable.text = "SAR 9499"
        }
        if sAR == "Apple MacBook Air" {
            srLable.text = "SAR 4696"
        }
        if sAR == "Apple TV" {
            srLable.text = "SAR 805"
        }
        if sAR == "New Apple AirTag" {
            srLable.text = "SAR 415"
        }
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
