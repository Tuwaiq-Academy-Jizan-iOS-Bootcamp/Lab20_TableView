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
    let contentImage = ["coffee1","coffee2","coffee3","coffee4","coffee5","coffee6","coffee7","coffee8","coffee9"]
    let contentTitle = ["Espresso","Cappuccino","Latte","Caramel Machiatto","Mocha","Chocolate","Green Tea","Milk Tea","Americano"]
    var sendImage = UIImage()
    var sendTitle = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    //send content to other view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = segue.destination as! ViewContentDetails
        sender.receivedImage = sendImage
        sender.receivedTitel = sendTitle
        
    }
    
}

//table view delegate and data source
extension TabelOfContents:UITableViewDelegate,UITableViewDataSource{
    //number of rows we need
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return contentTitle.count
    }
    //add the conntent to the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        //variables for the image and title
        var imageInTable = UIImage(named: contentImage[indexPath.row])
        let titaiInTable = contentTitle[indexPath.row]
        
        //change image size
        let size = CGSize(width: 80, height: 80)
       imageInTable = imageResize(imageWantChange : imageInTable! ,sizeChange: size)
        
        //object
        let structTable = TableContent(image: imageInTable!, superTitle: titaiInTable, subTitle: "COFFEE ☕️")
        
        //add image and titles to the content
        content.text = structTable.superTitle
        content.image = structTable.image
        content.secondaryText = structTable.subTitle
        
        //maybe we don't need the struck
       /* content.secondaryText = "COFFEE ☕️"
        content.image = imageInTable
        content.text = titaiInTable*/
        
        //put the contents into the cell
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        return cell
        }
    
    //this function changes the image size
    func imageResize(imageWantChange:UIImage, sizeChange:CGSize)-> UIImage{
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
            }
    
    //execute the required when pressing the row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sendImage = UIImage(named: contentImage[indexPath.row])!
        sendTitle = contentTitle[indexPath.row]
        performSegue(withIdentifier: "segueToViewContentDetails", sender: self)
        }
    
    
   /* func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }*/
}

