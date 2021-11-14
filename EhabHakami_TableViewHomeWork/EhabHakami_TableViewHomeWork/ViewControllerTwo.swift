//
//  ViewControllerTwo.swift
//  EhabHakami_TableViewHomeWork
//
//  Created by Ehab Hakami on 07/04/1443 AH.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    
    @IBOutlet weak var labelViewControlerTwo: UILabel!
    var carName = ""
    @IBOutlet weak var imageViewContrrolerTwo: UIImageView!
    var imageCar = UIImage(named: "")
    @IBOutlet weak var textViewContrrolerTwo: UITextView!
    var discrabionCar = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //تعريف الاوبجكت مع المتغير عشان نسوي عملية التعريف حق الصفحة الثانية وتنتقل البيانات
        labelViewControlerTwo.text = carName
        
        imageViewContrrolerTwo.image = imageCar
        
        textViewContrrolerTwo.text = discrabionCar
        
        
        
        
        // خبصة الي في الكومنت الباقي 
        
//        labelViewControlerTwo.text = recivedData
//        imageViewContrrolerTwo.image = UIImage(named: recivedData)
//
//        if labelViewControlerTwo.text == "charger_Srt" {
//            textViewContrrolerTwo.text = "musleCar"
//
//        }else if labelViewControlerTwo.text == "Challenger_Srt"{
//            textViewContrrolerTwo.text = "musleCar"
//
//
//        }else if labelViewControlerTwo.text == "comarozl1"{
//            textViewContrrolerTwo.text = "musleCar"
//
//        }else if labelViewControlerTwo.text == "c8"{
//        textViewContrrolerTwo.text = "superCar"
//
//        }else{
//            textViewContrrolerTwo.text = "superCar"
//        }
       
        
        
        
        
        
    }// end viewDidLoad
    
}
