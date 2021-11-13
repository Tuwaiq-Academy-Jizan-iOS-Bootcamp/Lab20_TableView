//
//  ViewController.swift
//  ArwaAlattas_lab20_tableView
//
//  Created by Arwa Alattas on 07/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var arrayContent  = ["apple","orange","banana","lemon","pineapple","mango"]
    var arrayDiscreption = [ "An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today","The orange is the fruit of various citrus species in the family Rutaceae"," banana is an elongated, edible fruit produced by several kinds of large herbaceous flowering plants in the genus Musa.In some countries, bananas used for cooking may be called plantains, distinguishing them from dessert bananas. ","The lemon (Citrus limon) is a species of small evergreen tree in the flowering plant family Rutaceae, native to Asia, primarily Northeast India (Assam), Northern Myanmar or China","The pineapple is a tropical plant with an edible fruit and is the most economically significant plant in the family Bromeliaceae. The pineapple is indigenous to South America, where it has been cultivated for many centuries.","A mango is an edible stone fruit produced by the tropical tree Mangifera indica which is believed to have originated from the region between northwestern Myanmar, Bangladesh, and northeastern India."]
    var contentTitel = ""
    var contentImage = UIImage(named: "image1")
    var contentDescription = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      tableView.delegate = self
        tableView.dataSource = self
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gotoVC2 = segue.destination as! informationViewController
        gotoVC2.labelContent = contentTitel
        gotoVC2.describtionContent = contentDescription
        gotoVC2.imageViewContent = contentImage 
    }

}
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: arrayContent[indexPath.row])
        content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        content.text = arrayContent[indexPath.row]
        content.secondaryText = arrayDiscreption[indexPath.row]
        cell.contentConfiguration = content
       cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        contentTitel = arrayContent[indexPath.row]
        contentDescription = arrayDiscreption[indexPath.row]
        contentImage = UIImage(named: arrayContent[indexPath.row])
        performSegue(withIdentifier: "goto", sender: self)
        
    }
}
