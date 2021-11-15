//
//  ViewController.swift
//  TigerScondProggraming
//
//  Created by Yasir Hakami on 14/11/2021.
//

import UIKit


class ViewController: UIViewController {
    var nameTiger = ""
    var infoTiger = ""
    var imageTiger = UIImage(named: "")
    
    
    @IBOutlet weak var tigerTableView: UITableView!
    
    
    
    var tiger1 = Tiger(nameOfTiger: "Bengal", infoOfTiger: "Bengal Tigers are famous for their rival-attacking abilities, and have been known to target nearby predators such as leopards and wolves when prey is scarce.", imageOfTiger: "bengal-tiger")
                       
    var  tiger2 = Tiger(nameOfTiger: "Indochinese", infoOfTiger: "The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia.",imageOfTiger: "indochinese-tiger")
    
    var tiger3 = Tiger(nameOfTiger: "Jaguar", infoOfTiger: "The difference between Tiger and Jaguar is Tigers have black spots on bright yellow or little orange skin, but Jaguars have dark black spots on simple yellow skin color. Tigers are well known for a variety of their species, but Jaguars do not have a specific species variety", imageOfTiger:"jaguar")
    
    var tiger4 = Tiger(nameOfTiger: "Malayan", infoOfTiger: "The Malayan tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Peninsular Malaysia.", imageOfTiger:"malayan-tiger")
    
    var tiger5 = Tiger(nameOfTiger: "Siberian", infoOfTiger: "The Siberian tiger is a tiger from a specific population of the Panthera tigris tigris subspecies native to the Russian Far East, Northeast China", imageOfTiger:"siberian-tiger")
    
    var tiger6 = Tiger(nameOfTiger: "Sumatran", infoOfTiger: "The Sumatran tiger is a population of Panthera tigris sondaica on the Indonesian island of Sumatra. ... This population was listed as Critically Endangered on ",imageOfTiger:"sumatran-tiger")

    
    var type1 = [Tiger]()
    var type2 = [Tiger]()
    var type3 = [Tiger]()
    var arrayTiger = [[Tiger]] ()
    let titleOfSecation = ["famous Type :","Panthera Type :","subspecies Type :"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tigerTableView?.delegate = self
        tigerTableView?.dataSource = self
        
        type1.append(tiger1)
        type1.append(tiger2)
        type2.append(tiger3)
        type2.append(tiger4)
        type3.append(tiger5)
        type3.append(tiger6)
        
        
        arrayTiger = [type1, type2, type3]
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dataVC = segue.destination as! TigerInfo
        dataVC.vcName = nameTiger
        dataVC.vcInfo = infoTiger
        dataVC.vcImage = imageTiger
        
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTiger[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tigerTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        
        // stap for title
        content.text = arrayTiger[indexPath.section][indexPath.row].nameOfTiger
        // stap for subTitle
        content.secondaryTextProperties.numberOfLines = 2
        content.secondaryText = arrayTiger[indexPath.section][indexPath.row].infoOfTiger
        // stap for image
        let sizeOfimage = CGSize(width: 80, height: 80)
        content.imageProperties.maximumSize = sizeOfimage
        let image = UIImage(named: arrayTiger[indexPath.section][indexPath.row].imageOfTiger)
        content.image = image
        
        // accessory for the cell model
        cell.accessoryType = .disclosureIndicator
        // put the content inside the cell
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameTiger = arrayTiger[indexPath.section][indexPath.row].nameOfTiger
        infoTiger = arrayTiger[indexPath.section][indexPath.row].infoOfTiger
        let image = UIImage(named: arrayTiger[indexPath.section][indexPath.row].imageOfTiger)
        imageTiger = image
        performSegue(withIdentifier: "toInfo", sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Be CareFul !"
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Welcome In World Of Tigers : \(titleOfSecation[section])"
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleOfSecation.count
    }
    
    
}
