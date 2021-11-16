//
//  ViewController.swift
//  viewCell
//
//  Created by Abdulrhman Abuhyyh on 08/04/1443 AH.
//

import UIKit


class ViewController: UIViewController {
    var sales : [[AppleSale]] = [
    [AppleSale(name: "Apple MacBook Air", image: "Apple MacBook Air", description: "2020 Apple iPad Air (10.9-inch, Wi-Fi, 64GB) - Silver (4th Generation)"
             ),
     AppleSale(name: "Apple MacBook Pro", image: "Apple MacBook", description: "2021 Apple MacBook Pro (14-inch, Apple M1 Pro chip with 8‑core CPU and 14‑core GPU, 16GB RAM, 512GB SSD) - Silver")],
    [ AppleSale(name: "Apple iMac", image:  "Apple iMac", description: "2021 Apple iMac (24-inch, Apple M1 chip with 8‑core CPU and 8‑core GPU, 4 ports, 8GB RAM, 512GB) - Green")],
    [AppleSale(name: "Apple iPad Air", image:  "Apple iPad Air" , description: "2020 Apple iPad Air (10.9-inch, Wi-Fi, 64GB) - Silver (4th Generation)"),
    AppleSale(name: "Apple iPad Pro", image: "Apple iPad Pro" , description: "2021 Apple iPad Pro (11-inch, Wi-Fi, 128GB) - Space Grey (3rd Generation)"),
         AppleSale(name: "Apple TV", image: "Apple TV" , description: "The -Connectivity technology HDMI  -Brand Apple - -Resolution 4K -Display LED -Series MXGY2AE/A - Model 2021 -Colour Blak - Control Remote & Tuch"),
        AppleSale(name: "IPhone 13 Pro Max", image: "IPhone 13 Pro Max" , description: "New Apple iPhone 13 Pro Max with FaceTime (256GB) - Sierra Blue"),
        AppleSale(name: "New Apple AirTag", image:"New Apple AirTag" , description: "AirTag is a small and elegantly designed accessory that can be personalized with free engraving, and enables iPhone users to securely locate and keep track of their valuables using the Find My app"),
       AppleSale(name: "AirPods Pro", image: "AirPods Pro" , description: "design conventions of the more expensive AirPods Pro, including their shorter stems and horizontally aligned charging case"),
        AppleSale(name: "Apple Watch", image:"Apple Watch", description: "Apple Watch Series 6 (GPS, 44mm) - Blue Aluminium Case with Deep Navy Sport Band")]
        ]
    @IBOutlet weak var tableViewMySela: UITableView!{
    didSet {
     tableViewMySela.delegate = self
        tableViewMySela.dataSource = self

       }
    }
    var salesA : [[AppleSale]] = []
    var selectionSale = ["MacBook","iMac","iPhone & Accessories"]
    var selectedSale: AppleSale?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dataMoving = segue.destination as! ViewControllerDataEntry
        dataMoving.selectedSale = selectedSale
    }
}
extension ViewController:  UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sales[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        cell.accessoryType = .disclosureIndicator
        content.secondaryTextProperties.numberOfLines = 2
        content.text = sales[indexPath.section][indexPath.row].name
        content.secondaryText = sales[indexPath.section][indexPath.row].description
        let images = UIImage(named: sales[indexPath.section][indexPath.row].image)
        content.image = images
        content.imageProperties.maximumSize = CGSize(width: 60, height: 60)
        
        cell.contentConfiguration = content
        return cell
    }
}
extension ViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sales.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return selectionSale[section]
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == selectionSale.count - 1 {
            return " this is the footer"
            
        }else {
            return ""
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x:0, y:0 ,width: UIScreen.main.bounds.width,height: 40))
        view.backgroundColor = .systemYellow
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 40))
        label.text = selectionSale[section]
        label.textColor = .black
        view.addSubview(label)
                       
        
        return view
        
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSale = sales[indexPath.section][indexPath.row]
        performSegue(withIdentifier: "dataVC", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
