//
//  ViewContentDetails.swift
//  TableViwe.
//
//  Created by Jawaher Mohammad on 09/04/1443 AH.
//

import Foundation
import UIKit
class ViewContentDetails:UIViewController{
    
    @IBOutlet weak var drinkSuperTitleLable: UILabel!
    @IBOutlet weak var drinkImageView: UIImageView!
    @IBOutlet weak var drinkSubTitleLable: UITextView!
    
    var selectedDrink : Drink?
    override func viewDidLoad() {
        if let drink = selectedDrink{
            drinkSuperTitleLable.text = drink.drinkSuperTitle
            drinkImageView.image = UIImage(named: drink.drinkImage)
            drinkSubTitleLable.text = drink.drinkSubTitle
        }
    }
}
