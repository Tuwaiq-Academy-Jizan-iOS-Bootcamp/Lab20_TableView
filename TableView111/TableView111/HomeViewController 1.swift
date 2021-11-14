//
//  HomeViewController 1.swift
//  TableView111
//
//  Created by موسى مسملي on 12/11/2021.
//

import UIKit

class HomeViewController1: UIViewController{
    
   
    
    @IBOutlet weak var lab1: UILabel!
 var namelab = ""
    
    @IBOutlet weak var imageone: UIImageView!
    
    var labimage = UIImage(named: "")
    
    @IBOutlet weak var Descreption: UILabel!

    var DescreptionC = ""

   
    override func viewDidLoad() {
        super.viewDidLoad()
       lab1.text = namelab
        imageone.image = UIImage(named:"")
        Descreption.text = DescreptionC
    }
}
