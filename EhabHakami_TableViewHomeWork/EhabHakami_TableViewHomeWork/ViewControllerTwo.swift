//
//  ViewControllerTwo.swift
//  EhabHakami_TableViewHomeWork
//
//  Created by Ehab Hakami on 07/04/1443 AH.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    var recivedData = ""
    @IBOutlet weak var labelViewControlerTwo: UILabel!
    
    @IBOutlet weak var imageViewContrrolerTwo: UIImageView!
    
    @IBOutlet weak var textViewContrrolerTwo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelViewControlerTwo.text = recivedData
        imageViewContrrolerTwo.image = UIImage(named: recivedData)
        
        if labelViewControlerTwo.text == "charger_Srt" {
            textViewContrrolerTwo.text = "musleCar"
            
        }else if labelViewControlerTwo.text == "Challenger_Srt"{
            textViewContrrolerTwo.text = "musleCar"
            
            
        }else if labelViewControlerTwo.text == "comarozl1"{
            textViewContrrolerTwo.text = "musleCar"
            
        }else if labelViewControlerTwo.text == "c8"{
        textViewContrrolerTwo.text = "superCar"
            
        }else{
            textViewContrrolerTwo.text = "superCar"
        }
        //end viewDidLoad
    }
    
}
