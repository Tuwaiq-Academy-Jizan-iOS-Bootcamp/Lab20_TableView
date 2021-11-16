//
//  ViewContentDetails.swift
//  JawaherAbuLahsah_tableView
//
//  Created by Jawaher Mohammad on 06/04/1443 AH.
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
    
    func showDetails(){
        switch receivedTitel{
        case "Espresso":
            contentDescription.text = "Espresso : A full-flavored, concentrated form of coffee."
        case "Cappuccino":
            contentDescription.text = "Cappuccino: A single shot of espresso topped with steamed and frothed milk."
        case "Latte":
            contentDescription.text = "Coffee latte: A double shot of espresso topped with steamed milk"
        case "Caramel Machiatto":
            contentDescription.text = "Caramel Machiatto: It is made with vanilla syrup, steamed milk, espresso and caramel sauce."
        case "Mocha":
            contentDescription.text = "Mocha: Like a coffee latte, coffee mocha is based on espresso and hot milk but with added chocolate flavouring and sweetener ."
        case "Chocolate":
            contentDescription.text = "Hot chocolate: also known as hot cocoa or drinking chocolate, is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener."
        case "Green Tea":
            contentDescription.text = "Green Tea: is made from unoxidized leaves and is one of the least processed types of tea."
        case "Milk Tea":
            contentDescription.text = "Milk tea refers to several forms of beverage found in many cultures, containing some combination of tea and milk."
        case "Americano":
            contentDescription.text = "Coffee Americano: A shot of espresso combined with hot water."
        default: contentDescription.text = "ERROR"
        }
    }
    
    
}
