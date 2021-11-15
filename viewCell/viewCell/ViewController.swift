//
//  ViewController.swift
//  viewCell
//
//  Created by Abdulrhman Abuhyyh on 08/04/1443 AH.
//

import UIKit
struct AppleSale {
    var name : String
    var image : UIImage
    var description : String
    
}

class ViewController: UIViewController {
    var arrayDevices : [AppleSale] = []
    
var macBook = AppleSale(name: "Apple MacBook Air", image: UIImage(named: "Apple MacBook Air")!, description: "2020 Apple iPad Air (10.9-inch, Wi-Fi, 64GB) - Silver (4th Generation)"
)
    var macBookPro = AppleSale(name: "Apple MacBook Pro", image: UIImage(named: "Apple MacBook")!, description: "2021 Apple MacBook Pro (14-inch, Apple M1 Pro chip with 8‑core CPU and 14‑core GPU, 16GB RAM, 512GB SSD) - Silver")
    var iMac = AppleSale(name: "Apple iMac", image: UIImage(named: "Apple iMac")!, description: "2021 Apple iMac (24-inch, Apple M1 chip with 8‑core CPU and 8‑core GPU, 4 ports, 8GB RAM, 512GB) - Green")
    var iPad = AppleSale(name: "Apple iPad Air", image: UIImage(named: "Apple iPad Air")!, description: "2020 Apple iPad Air (10.9-inch, Wi-Fi, 64GB) - Silver (4th Generation)")
    var iPadPro = AppleSale(name: "Apple iPad Pro", image: UIImage(named: "Apple iPad Pro")!, description: "2021 Apple iPad Pro (11-inch, Wi-Fi, 128GB) - Space Grey (3rd Generation)")
    var appleTV = AppleSale(name: "Apple TV", image: UIImage(named: "Apple TV")!, description: "The -Connectivity technology HDMI  -Brand Apple - -Resolution 4K -Display LED -Series MXGY2AE/A - Model 2021 -Colour Blak - Control Remote & Tuch")
    var iPhone = AppleSale(name: "IPhone 13 Pro Max", image: UIImage(named: "IPhone 13 Pro Max")!, description: "New Apple iPhone 13 Pro Max with FaceTime (256GB) - Sierra Blue")
    var airTag = AppleSale(name: "New Apple AirTag", image: UIImage(named: "New Apple AirTag")!, description: "AirTag is a small and elegantly designed accessory that can be personalized with free engraving, and enables iPhone users to securely locate and keep track of their valuables using the Find My app")
    var airPods = AppleSale(name: "AirPods Pro", image: UIImage(named: "AirPods Pro")!, description: "design conventions of the more expensive AirPods Pro, including their shorter stems and horizontally aligned charging case")
    var whatch = AppleSale(name: "Apple Watch", image: UIImage(named: "Apple Watch")!, description: "Apple Watch Series 6 (GPS, 44mm) - Blue Aluminium Case with Deep Navy Sport Band")
    
    var nameDevice = ""
    var imageDeviceInsert = UIImage(named: "")
    var descDevice = ""
    
    @IBOutlet weak var tableViewMySela: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMySela.delegate = self
        tableViewMySela.dataSource = self
        
        arrayDevices.append(macBook)
        arrayDevices.append(macBookPro)
        arrayDevices.append(iMac)
        arrayDevices.append(iPad)
        arrayDevices.append(iPadPro)
        arrayDevices.append(appleTV)
        arrayDevices.append(iPhone)
        arrayDevices.append(airTag)
        arrayDevices.append(airPods)
        arrayDevices.append(whatch)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dataMoving = segue.destination as! ViewControllerDataEntry
        dataMoving.theNameOfDevice = nameDevice
        dataMoving.theImageOfDevice = imageDeviceInsert
        dataMoving.theDisc = descDevice
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDevices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        cell.accessoryType = .disclosureIndicator
        content.text = arrayDevices[indexPath.row].name
        content.secondaryTextProperties.numberOfLines = 2
        content.secondaryText = arrayDevices[indexPath.row].description
        let imageSaiz = CGSize.init(width: 45, height: 45)
        content.imageProperties.maximumSize = imageSaiz
        content.image = arrayDevices[indexPath.row].image
        
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameDevice = arrayDevices[indexPath.row].name
        imageDeviceInsert = arrayDevices[indexPath.row].image
        descDevice = arrayDevices[indexPath.row].description
        
performSegue(withIdentifier: "dataVC", sender: self)
    }
}

