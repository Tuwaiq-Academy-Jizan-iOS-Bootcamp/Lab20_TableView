//
//  ViewController.swift
//  TableViwe.
//
//  Created by Jawaher Mohammad on 09/04/1443 AH.
//

import UIKit
struct TableContent{
    var image : UIImage
    var superTitle : String
    var subTitle : String
}
class ViewController: UIViewController {
    var sendImage = UIImage()
    var sendTitle = ""
    var sendSupTitle = ""
    @IBOutlet weak var MyTableView: UITableView!
   /* var coffee1 = TableContent(image: UIImage(named: "coffee1")!, superTitle: "Espresso", subTitle: "COFFEE")
    var coffee2 = TableContent(image: UIImage(named: "coffee2")!, superTitle: "Cappuccino", subTitle: "COFFEE")
    var coffee3 = TableContent(image: UIImage(named: "coffee3")!, superTitle: "Latte", subTitle: "COFFEE")
    var coffee4 = TableContent(image: UIImage(named: "coffee4")!, superTitle: "Caramel Machiatto", subTitle: "COFFEE")
    var arrayCoffee : [TableContent] = []

    var juice1 = TableContent(image: UIImage(named: "juice1")!, superTitle: "Orange Juice", subTitle: "JUICE")
    var juice2 = TableContent(image: UIImage(named: "juice2")!, superTitle: "Lemon Juice", subTitle: "JUICE")
    var juice3 = TableContent(image: UIImage(named: "juice3")!, superTitle: "Lime Juice", subTitle: "JUICE")
    var juice4 = TableContent(image: UIImage(named: "juice4")!, superTitle: "Red Orange Juice", subTitle: "JUICE")
    var arrayJuice : [TableContent] = []
    
    var iceCream1 = TableContent(image: UIImage(named: "iceCream1")!, superTitle: "Ice Cream 1", subTitle: "ICE CREAM")
    var iceCream2 = TableContent(image: UIImage(named: "iceCream2")!, superTitle: "Ice Cream 2", subTitle: "ICE CREAM")
    var iceCream3 = TableContent(image: UIImage(named: "iceCream3")!, superTitle: "Ice Cream 3", subTitle: "ICE CREAM")
    var iceCream4 = TableContent(image: UIImage(named: "iceCream4")!, superTitle: "Ice Cream 4", subTitle: "ICE CREAM")
    var arrayIceCream : [TableContent] = []*/
    var oneArray = [[TableContent(image: UIImage(named: "coffee1")!, superTitle: "Espresso", subTitle: "COFFEE"),TableContent(image: UIImage(named: "coffee2")!, superTitle: "Cappuccino", subTitle: "COFFEE"),TableContent(image: UIImage(named: "coffee3")!, superTitle: "Latte", subTitle: "COFFEE"),TableContent(image: UIImage(named: "coffee4")!, superTitle: "Caramel Machiatto", subTitle: "COFFEE")],[TableContent(image: UIImage(named: "juice1")!, superTitle: "Orange Juice", subTitle: "JUICE"),TableContent(image: UIImage(named: "juice2")!, superTitle: "Lemon Juice", subTitle: "JUICE"),TableContent(image: UIImage(named: "juice3")!, superTitle: "Lime Juice", subTitle: "JUICE"),TableContent(image: UIImage(named: "juice4")!, superTitle: "Red Orange Juice", subTitle: "JUICE")],[TableContent(image: UIImage(named: "iceCream1")!, superTitle: "Ice Cream 1", subTitle: "ICE CREAM"),TableContent(image: UIImage(named: "iceCream2")!, superTitle: "Ice Cream 2", subTitle: "ICE CREAM"),TableContent(image: UIImage(named: "iceCream3")!, superTitle: "Ice Cream 3", subTitle: "ICE CREAM"),TableContent(image: UIImage(named: "iceCream4")!, superTitle: "Ice Cream 4", subTitle: "ICE CREAM")]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       /* arrayCoffee.append(coffee1)
        arrayCoffee.append(coffee2)
        arrayCoffee.append(coffee3)
        arrayCoffee.append(coffee4)
        arrayJuice.append(juice1)
        arrayJuice.append(juice2)
       arrayJuice.append(juice3)
      arrayJuice.append(juice4)
        arrayIceCream.append(iceCream1)
        arrayIceCream.append(iceCream2)
        arrayIceCream.append(iceCream3)
       arrayIceCream.append(iceCream4)*/
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = segue.destination as! ViewContentDetails
        sender.receivedImage = sendImage
        sender.receivedTitel = sendTitle
        sender.receivedSupTitle = sendSupTitle
    }

}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     /*   var numberOfRows = 0
        if section == 0{
            numberOfRows = arrayCoffee.count
        }else if section == 1{
            numberOfRows = arrayJuice.count
        }else{
            numberOfRows = arrayIceCream.count
        }*/
        return oneArray[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return oneArray.count
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let size = CGSize(width: 50, height: 50)
        content.text = oneArray[indexPath.section][indexPath.row].superTitle
        content.secondaryText = oneArray[indexPath.section][indexPath.row].subTitle
        content.image = oneArray[indexPath.section][indexPath.row].image.preparingThumbnail(of: size)
        content.secondaryTextProperties.numberOfLines = 1
        /*
        if indexPath.section == 0 {
        
        content.text = arrayCoffee[indexPath.row].superTitle
        content.secondaryText = arrayCoffee[indexPath.row].subTitle
        content.image = arrayCoffee[indexPath.row].image.preparingThumbnail(of: size)
        content.secondaryTextProperties.numberOfLines = 1
        }
        else if indexPath.section == 1{
           
            content.text = arrayJuice[indexPath.row].superTitle
            content.secondaryText = arrayJuice[indexPath.row].subTitle
            content.image = arrayJuice[indexPath.row].image.preparingThumbnail(of: size)
            content.secondaryTextProperties.numberOfLines = 1
        }else{
          
            content.text = arrayIceCream[indexPath.row].superTitle
            content.secondaryText = arrayIceCream[indexPath.row].subTitle
            content.image = arrayIceCream[indexPath.row].image.preparingThumbnail(of: size)
            content.secondaryTextProperties.numberOfLines = 1
        }*/
        //put the contents into the cell
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var titleForHeader = ""
        if section == 0{
            titleForHeader = "Coffee"
        }else if section == 1{
            titleForHeader = "Juice"
        }else{
            titleForHeader = "Ice Cream"
        }
        return titleForHeader
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        var titleForFooter = ""
        if section == 0{
            titleForFooter = "End Section Coffee"
        }else if section == 1{
            titleForFooter = "End Section Juice"
        }else{
            titleForFooter = "End Section Ice Cream"
        }
        return titleForFooter
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       /* if indexPath.section == 0 {
        sendImage = arrayCoffee[indexPath.row].image
        sendTitle = arrayCoffee[indexPath.row].superTitle
        sendSupTitle = arrayCoffee[indexPath.row].subTitle
        }else if indexPath.section == 1{
            sendImage = arrayJuice[indexPath.row].image
            sendTitle = arrayJuice[indexPath.row].superTitle
            sendSupTitle = arrayJuice[indexPath.row].subTitle
        }else{
            sendImage = arrayIceCream[indexPath.row].image
            sendTitle = arrayIceCream[indexPath.row].superTitle
            sendSupTitle = arrayIceCream[indexPath.row].subTitle
        }*/
        sendImage = oneArray[indexPath.section][indexPath.row].image
        sendTitle = oneArray[indexPath.section][indexPath.row].superTitle
        sendSupTitle = oneArray[indexPath.section][indexPath.row].subTitle
        performSegue(withIdentifier: "segueToViewContentDetails", sender: self)
        }
    }
