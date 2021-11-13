//
//  ViewController.swift
//  TabelViewHomework
//
//  Created by Afrah Omar on 07/04/1443 AH.
//

import UIKit


struct Dunkn {
    let name : String
    let price: String
    let photo : String }


class ViewController: UIViewController {
    
    //    Variabels Mune DUNKIN 😋☕️
    var arryDunkn = [Dunkn]()
    //   var Select Row
    var array = ["ICED LATTE","DONUTS","croissant-cheese", "LATTE", "Black Coffee", "Packaged Coffe"]
    var nameOfTitle = ""
    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource = self
        
        //         Object Str [Dunkn] ..
        
        arryDunkn.append(Dunkn.init(name: "ICED LATTE", price: "price 14 SAR", photo: "ICED LATTE"))
        arryDunkn.append(Dunkn.init(name: "DONUTS", price: "price 30 SAR", photo: "DONUTS"))
        arryDunkn.append(Dunkn.init(name: "Croissant Cheese", price: "price 7 SAR", photo:  "croissant-cheese"))
        arryDunkn.append(Dunkn.init(name: "LATTE", price: "price 16 SAR", photo: "LATTE"))
        arryDunkn.append(Dunkn.init(name: "Black Coffee", price: "price 11 SAR", photo: "Black Coffee"))
        arryDunkn.append(Dunkn.init(name: "Packaged Coffee", price: "price 46 SAR", photo: "Packaged Coffe"))
        
    }
    
    //    Send element ViewaController to ViewControllerShow by segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendTo = segue.destination as?  ViewControllerShow
        sendTo?.titleName = nameOfTitle
    }
    
}

// Delegate and Data Source

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        Variabels Mune DUNKIN
        return arryDunkn.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        var content = cell.defaultContentConfiguration()
        //        The coding sgin " > "
        cell.accessoryType = .disclosureIndicator
        //add the conntent to the table View image , name and some information
        content.text = arryDunkn[indexPath.row].name
        content.secondaryText = String(arryDunkn[indexPath.row].price)
        content.image = UIImage(named: "\(arryDunkn[indexPath.row].photo)")
        //        size image
        content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        cell.contentConfiguration = content
        return cell
        
        
    }
    //    select the row and show details in ViewControllerShow
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameOfTitle = array[indexPath.row]
        performSegue(withIdentifier: "VC2", sender: self )
    }
}
