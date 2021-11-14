//
//  ViewController.swift
//  ArwaAlattas_lab20_tableView
//
//  Created by Arwa Alattas on 07/04/1443 AH.
//

import UIKit
struct Detiles{
    var name : String
    var image : String
    var description : String
//    var section : Int
}
class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
  
    var fruit1 = Detiles(name: "apple", image:"apple", description: "An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today")
    var fruit2 = Detiles(name: "orange", image: "orange", description: "The orange is the fruit of various citrus species in the family Rutaceae")
    var fruit3 = Detiles(name: "banana", image: "banana", description: " banana is an elongated, edible fruit produced by several kinds of large herbaceous flowering plants in the genus Musa.In some countries, bananas used for cooking may be called plantains, distinguishing them from dessert bananas. ")
    var fruit4 = Detiles(name: "lemon", image:  "lemon", description: "The lemon (Citrus limon) is a species of small evergreen tree in the flowering plant family Rutaceae, native to Asia, primarily Northeast India (Assam), Northern Myanmar or China")
    var fruit5 = Detiles(name: "pineapple", image:  "pineapple", description: "The pineapple is a tropical plant with an edible fruit and is the most economically significant plant in the family Bromeliaceae. The pineapple is indigenous to South America, where it has been cultivated for many centuries.")
    var fruit6 = Detiles(name: "mango", image: "mango", description: "A mango is an edible stone fruit produced by the tropical tree Mangifera indica which is believed to have originated from the region between northwestern Myanmar, Bangladesh, and northeastern India.")
   var arrayContent : [[Detiles]] = []
    var arraySection1 : [Detiles] = []
    var arraySection2 : [Detiles] = []
    var arraySection3 : [Detiles] = []
    var arrayOfsection = ["section 1","section 2","section 3"]
    var contentTitel = ""
    var contentImage = UIImage(named: "image1")
    var contentDescription = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      tableView.delegate = self
        tableView.dataSource = self
        arraySection1 = [fruit1,fruit2]
        arraySection2 = [fruit3,fruit4]
        arraySection3 = [fruit5,fruit6]
        arrayContent = [arraySection1,arraySection2,arraySection3]

    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gotoVC2 = segue.destination as! informationViewController
        gotoVC2.labelContent = contentTitel
        gotoVC2.describtionContent = contentDescription
        gotoVC2.imageViewContent = contentImage 
    }

}
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayContent.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayContent[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: arrayContent[indexPath.section][indexPath.row].image)
        content.imageProperties.maximumSize = CGSize(width: 40, height: 40)
        content.text = arrayContent[indexPath.section][indexPath.row].name
        content.secondaryText = arrayContent[indexPath.section][indexPath.row].description
        content.secondaryTextProperties.numberOfLines = 2
        cell.contentConfiguration = content
       cell.accessoryType = .disclosureIndicator
        
        return cell
    }
   

 func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return arrayOfsection[section]
    }


    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {

        return "  end \(arrayOfsection[section])"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        contentTitel = arrayContent[indexPath.section][indexPath.row].name
        contentDescription = arrayContent[indexPath.section][indexPath.row].description
        contentImage = UIImage(named: arrayContent[indexPath.section][indexPath.row].image)
        performSegue(withIdentifier: "goto", sender: self)
        
    }
}
