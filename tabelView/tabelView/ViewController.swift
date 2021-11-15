//
//  ViewController.swift
//  tabelView
//
//  Created by Afaf Yahya on 06/04/1443 AH.
//

import UIKit
struct Berry{
   
    var name : String
    var descriptions : String
    var photo : String
}

class ViewController: UIViewController {
    @IBOutlet weak var tabelView: UITableView!
    var nameOfLable = ""
    var berrays = [[Berry(name: "Blackberries", descriptions: "Blackberries or Shami berries are a type of plant that belongs to the genus Mulberry of the Mulberry family.  Its origins go back to the Middle East and all of Southwest Asia.  The black mulberry has been cultivated in the region for centuries and has spread to many parts of the world.  The mulberry tree is a perennial tree.", photo: "Blackberries"),Berry(name: "Blueberry", descriptions: "Blueberries, a shrubby plant that spreads wild in many countries of the world and is distinguished by the color of its blue fruits.  It contains proteins, fats, sugars and vitamins, and there are special chemical molecules, known as flavonoids, that open blood vessels.", photo: "Blueberry")],[Berry(name: "Cranberry", descriptions: "The sharp currant is a small plant with red fruits that belongs to the heather family.  Its pungent taste is used in sauces or juices, and it is also used in the manufacture of jelly.  It is used in the preparation of cakes and in medicine.", photo: "Cranberry"),Berry(name: "GojiBerry", descriptions: "Goji berry is an ancient fruit famous in traditional Chinese medicine, and is distinguished by its red color, and it grows on an evergreen shrub native to China, Mongolia and the Tibetan Himalayas.", photo: "GojiBerry")],[Berry(name: "Rasberry", descriptions: "Red berries are a rich source of many different vitamins and minerals, the most important of which are: Vitamin C, which is mainly associated with skin health and body functions.", photo: "Rasberry"),Berry(name: "Strawberry", descriptions: "Strawberry is a plant species in the genus of rosemary.  It is called the fruit of grace, and the name is also given to the fruit.  It is one of the non-traditional fruit crops, desert, and desert, and the marriage of crops with great yield, exported, exported or fresh.", photo: "Strawberry")]]
//    let headerTitles = ["First berry", "KickAss"]
    var berryInformation : [[Berry]] = []
    var sectionberray = ["Section1","Section2","Section3"]
    var selectedberray:Berry?
//    var barry1 = Berry(name: "Blueberry", descriptions: "Blueberries, a shrubby plant that spreads wild in many countries of the world and is distinguished by the color of its blue fruits.  It contains proteins, fats, sugars and vitamins, and there are special chemical molecules, known as flavonoids, that open blood vessels.", photo: "Blueberry")
//
//    var barry2 = Berry(name: "Cranberry", descriptions: "The sharp currant is a small plant with red fruits that belongs to the heather family.  Its pungent taste is used in sauces or juices, and it is also used in the manufacture of jelly.  It is used in the preparation of cakes and in medicine.", photo: "Cranberry")
//
//    var barry3 = Berry(name: "Rasberry", descriptions: "Red berries are a rich source of many different vitamins and minerals, the most important of which are: Vitamin C, which is mainly associated with skin health and body functions.", photo: "Rasberry")
//
//    var barry4 = Berry(name: "Strawberry", descriptions: "Strawberry is a plant species in the genus of rosemary.  It is called the fruit of grace, and the name is also given to the fruit.  It is one of the non-traditional fruit crops, desert, and desert, and the marriage of crops with great yield, exported, exported or fresh.", photo: "Strawberry")
//    var berry5 = Berry(name: "Blackberries", descriptions: "Blackberries or Shami berries are a type of plant that belongs to the genus Mulberry of the Mulberry family.  Its origins go back to the Middle East and all of Southwest Asia.  The black mulberry has been cultivated in the region for centuries and has spread to many parts of the world.  The mulberry tree is a perennial tree.", photo: "Blackberries")
//    var berry6 = Berry(name: "GojiBerry", descriptions: "Goji berry is an ancient fruit famous in traditional Chinese medicine, and is distinguished by its red color, and it grows on an evergreen shrub native to China, Mongolia and the Tibetan Himalayas.", photo: "GojiBerry")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabelView.delegate = self
        tabelView.dataSource = self
        
        
//        arrinformation.append(barry1)
//        arrinformation.append(barry2)
//        arrinformation.append(barry3)
//        arrinformation.append(barry4)
//        arrinformation.append(berry5)
//        arrinformation.append(berry6)
//
        
        
        
        
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let goTo = segue.destination as? TheScundViewController
        goTo?.selectedberray = selectedberray
    }

}
    
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return berrays[section].count
        }
        func numberOfSections(in tableView: UITableView) -> Int {
            return berrays.count
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
//        to(>)
        cell.accessoryType =  .disclosureIndicator
//      to titel in cell
        content.text = berrays[indexPath.section][indexPath.row].name
//        to description label in cell
        content.secondaryText = berrays[indexPath.section][indexPath.row].descriptions
//        to image in cell
        let image = UIImage(named: berrays[indexPath.section][indexPath.row].photo)
        content.image = image
//        to klean and size of image in cell
        content.imageProperties.maximumSize = CGSize(width: 60, height: 60)
//        to line in label of cell
        content.secondaryTextProperties.numberOfLines = 2
//        to appear all information in cell(image,title label,subtitel label)
        cell.contentConfiguration = content
        return cell
        
    }
    
    
    
//        func tableView(_ tableView: UITableView, numberOfSection section: Int) -> Int {
//            return berrays.count
//        }
        
        
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
//    }
        

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Berry"
    }
    //    to footer in only list end
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == sectionberray.count - 1{
            return "The last"
        }else {
            return ""
        }
    }



//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
//        view.backgroundColor = .systemPink
//        let label = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 40))
//        label.text = sectionberray[section]
//        label.textColor = .white
////        label.textAlignment = .center
//        view.addSubview(label)
//        return view
//    }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 40
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        var content = cell.defaultContentConfiguration()
////        to(>)
//        cell.accessoryType =  .disclosureIndicator
////      to titel in cell
//        content.text = berrays[indexPath.section][indexPath.row].name
////        to description label in cell
//        content.secondaryText = berrays[indexPath.section][indexPath.row].descriptions
////        to image in cell
//        let image = UIImage(named: berrays[indexPath.section][indexPath.row].photo)
//        content.image = image
////        to klean and size of image in cell
//        content.imageProperties.maximumSize = CGSize(width: 60, height: 60)
////        to line in label of cell
//        content.secondaryTextProperties.numberOfLines = 2
////        to appear all information in cell(image,title label,subtitel label)
//        cell.contentConfiguration = content
//        return cell
//
////        function to segue
//
//}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedberray = berryInformation[indexPath.section][indexPath.row]
        performSegue(withIdentifier: "goToVieowControleer", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
        

    }
    }

