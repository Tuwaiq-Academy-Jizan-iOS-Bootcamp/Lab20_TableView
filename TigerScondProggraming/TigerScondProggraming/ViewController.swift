//
//  ViewController.swift
//  TigerScondProggraming
//
//  Created by Yasir Hakami on 14/11/2021.
//

import UIKit
struct Tiger {
    var nameOfTiger: String
    var infoOfTiger: String
    var imageOfTiger: UIImage
}


class ViewController: UIViewController {
    
    var nameTiger = ""
    var infoTiger = ""
    var imageTiger = UIImage(named: "SwiftLogo")
    
    
    @IBOutlet weak var tigerTableView: UITableView!
    
    
    
    var tiger1 = Tiger(nameOfTiger: "Bengal", infoOfTiger: "Bengal Tigers are famous for their rival-attacking abilities, and have been known to target nearby predators such as leopards and wolves when prey is scarce.", imageOfTiger: UIImage(named: "bengal-tiger")!)
                       
    var  tiger2 = Tiger(nameOfTiger: "Indochinese", infoOfTiger: "The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia.",imageOfTiger:UIImage(named: "indochinese-tiger")!)
    
    var tiger3 = Tiger(nameOfTiger: "Jaguar", infoOfTiger: "The difference between Tiger and Jaguar is Tigers have black spots on bright yellow or little orange skin, but Jaguars have dark black spots on simple yellow skin color. Tigers are well known for a variety of their species, but Jaguars do not have a specific species variety", imageOfTiger: UIImage(named: "jaguar")!)
    
    var tiger4 = Tiger(nameOfTiger: "Malayan", infoOfTiger: "The Malayan tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Peninsular Malaysia.", imageOfTiger:UIImage(named:"malayan-tiger")!)
    
    var tiger5 = Tiger(nameOfTiger: "Siberian", infoOfTiger: "The Siberian tiger is a tiger from a specific population of the Panthera tigris tigris subspecies native to the Russian Far East, Northeast China", imageOfTiger: UIImage(named: "siberian-tiger")!)
    
    var tiger6 = Tiger(nameOfTiger: "Sumatran", infoOfTiger: "The Sumatran tiger is a population of Panthera tigris sondaica on the Indonesian island of Sumatra. ... This population was listed as Critically Endangered on ",imageOfTiger: UIImage(named:"sumatran-tiger")!)

    var arrayTiger : [Tiger] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tigerTableView?.delegate = self
        tigerTableView?.dataSource = self
        
        arrayTiger.append(tiger1)
        arrayTiger.append(tiger2)
        arrayTiger.append(tiger3)
        arrayTiger.append(tiger4)
        arrayTiger.append(tiger5)
        arrayTiger.append(tiger6)
        
        
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
        return arrayTiger.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        
        
        content.text = arrayTiger[indexPath.row].nameOfTiger
        content.secondaryTextProperties.numberOfLines = 2
        content.secondaryText = arrayTiger[indexPath.row].infoOfTiger
        let sizeOfimage = CGSize(width: 50, height: 50)
        content.imageProperties.maximumSize = sizeOfimage
        content.image = arrayTiger[indexPath.row].imageOfTiger
        
        
        
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameTiger = arrayTiger[indexPath.row].nameOfTiger
        infoTiger = arrayTiger[indexPath.row].infoOfTiger
        imageTiger = arrayTiger[indexPath.row].imageOfTiger
        
        performSegue(withIdentifier: "toInfo", sender: self)
        
    }
    
    
}
