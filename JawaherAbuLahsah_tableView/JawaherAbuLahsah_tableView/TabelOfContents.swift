//
//  ViewController.swift
//  JawaherAbuLahsah_tableView
//
//  Created by Jawaher Mohammad on 06/04/1443 AH.
//

import UIKit

struct TableContent{
    var image : UIImage
    var superTitle : String
    var subTitle : String
}

class TabelOfContents: UIViewController {
//connect table view
    @IBOutlet weak var tableContentView: UITableView!
    
    //create an array of images and titles
   /*
    let contentImage = ["coffee1","coffee2","coffee3","coffee4","coffee5","coffee6","coffee7","coffee8","coffee9"]
    let contentTitle = ["Espresso","Cappuccino","Latte","Caramel Machiatto","Mocha","Chocolate","Green Tea","Milk Tea","Americano"]
    let contentSubTitle = ["Espresso : A full-flavored, concentrated form of coffee.","Cappuccino: A single shot of espresso topped with steamed and frothed milk.","Coffee latte: A double shot of espresso topped with steamed milk.","Caramel Machiatto: It is made with vanilla syrup, steamed milk, espresso and caramel sauce.","Mocha: Like a coffee latte, coffee mocha is based on espresso and hot milk but with added chocolate flavouring and sweetener .","Hot chocolate: also known as hot cocoa or drinking chocolate, is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener.","Green Tea: is made from unoxidized leaves and is one of the least processed types of tea.","Milk tea refers to several forms of beverage found in many cultures, containing some combination of tea and milk.","Coffee Americano: A shot of espresso combined with hot water."]
    */
    var sendImage = UIImage()
    var sendTitle = ""
    var sendSupTitle = ""
    var coffee1 = TableContent(image: UIImage(named: "coffee1")!, superTitle: "Espresso", subTitle: "Espresso : A full-flavored, concentrated form of coffee.")
    var coffee2 = TableContent(image: UIImage(named: "coffee2")!, superTitle: "Cappuccino", subTitle: "Cappuccino: A single shot of espresso topped with steamed and frothed milk.")
    var coffee3 = TableContent(image: UIImage(named: "coffee3")!, superTitle: "Latte", subTitle: "Coffee latte: A double shot of espresso topped with steamed milk.")
    var coffee4 = TableContent(image: UIImage(named: "coffee4")!, superTitle: "Caramel Machiatto", subTitle: "Caramel Machiatto: It is made with vanilla syrup, steamed milk, espresso and caramel sauce.")
    var coffee5 = TableContent(image: UIImage(named: "coffee5")!, superTitle: "Mocha", subTitle: "Mocha: Like a coffee latte, coffee mocha is based on espresso and hot milk but with added chocolate flavouring and sweetener .")
    var coffee6 = TableContent(image: UIImage(named: "coffee6")!, superTitle: "Chocolate", subTitle: "Hot chocolate: also known as hot cocoa or drinking chocolate, is a heated drink consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and usually a sweetener.")
    var coffee7 = TableContent(image: UIImage(named: "coffee7")!, superTitle: "Green Tea", subTitle: "Green Tea: is made from unoxidized leaves and is one of the least processed types of tea.")
    var coffee8 = TableContent(image: UIImage(named: "coffee8")!, superTitle: "Milk Tea", subTitle: "Milk tea refers to several forms of beverage found in many cultures, containing some combination of tea and milk.")
    var coffee9 = TableContent(image: UIImage(named: "coffee9")!, superTitle: "Americano", subTitle: "Coffee Americano: A shot of espresso combined with hot water.")
    var arrayCoffee : [TableContent] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrayCoffee.append(coffee1)
        arrayCoffee.append(coffee2)
        arrayCoffee.append(coffee3)
        arrayCoffee.append(coffee4)
        arrayCoffee.append(coffee5)
        arrayCoffee.append(coffee6)
        arrayCoffee.append(coffee7)
        arrayCoffee.append(coffee8)
        arrayCoffee.append(coffee9)
    }
    //send content to other view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = segue.destination as! ViewContentDetails
        sender.receivedImage = sendImage
        sender.receivedTitel = sendTitle
        sender.receivedSupTitle = sendSupTitle
    }
    
}

//table view delegate and data source
extension TabelOfContents:UITableViewDelegate,UITableViewDataSource{
    //number of rows we need
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // return contentTitle.count
        return arrayCoffee.count
    }
    //add the conntent to the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        
        let size = CGSize(width: 80, height: 80)
        content.text = arrayCoffee[indexPath.row].superTitle
        content.secondaryText = arrayCoffee[indexPath.row].subTitle
        content.image = arrayCoffee[indexPath.row].image.preparingThumbnail(of: size)
        content.secondaryTextProperties.numberOfLines = 1
        //put the contents into the cell
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        return cell
        
        
        /*
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        //variables for the image and title
        let imageInTable = UIImage(named: contentImage[indexPath.row])
        let titleInTable = contentTitle[indexPath.row]
       let subTitleInTable = contentSubTitle[indexPath.row]
        
        //change image size
        let size = CGSize(width: 80, height: 80)
        content.imageProperties.maximumSize = size
        //imageInTable = imageResize(imageWantChange : imageInTable! ,sizeChange: size)
        //object
        let structTable = TableContent(image: imageInTable!, superTitle: titleInTable, subTitle: subTitleInTable)
    
        //add image and titles to the content
        content.text = structTable.superTitle
        content.image = structTable.image
        content.secondaryText = structTable.subTitle
       content.secondaryTextProperties.numberOfLines = 1
       
       
        //maybe we don't need the struck
       /* content.secondaryText = subTitleInTable
        content.image = imageInTable
        content.text = titleInTable
        content.secondaryTextProperties.numberOfLines = 1*/
        
        //put the contents into the cell
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        return cell
         */
        }
    
    
    //execute the required when pressing the row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sendImage = arrayCoffee[indexPath.row].image
        sendTitle = arrayCoffee[indexPath.row].superTitle
        sendSupTitle = arrayCoffee[indexPath.row].subTitle
        performSegue(withIdentifier: "segueToViewContentDetails", sender: self)
        }
    
    
    //this function changes the image size
    /*func imageResize(imageWantChange:UIImage, sizeChange:CGSize)-> UIImage{
        let hasAlpha = true
        let scale: CGFloat = 0.0 // Use scale factor of main screen
        // Create a Drawing Environment (which will render to a bitmap image, later)
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        let rect = CGRect(origin: .zero, size: sizeChange)
        imageWantChange.draw(in: rect)
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        // Clean up the Drawing Environment (created above)
        UIGraphicsEndImageContext()
        return scaledImage!
            }*/
   /* func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }*/
}

