//
//  ViewController.swift
//  TabelViewHomework
//
//  Created by Afrah Omar on 07/04/1443 AH.
//

import UIKit


struct Dunkn {
    let name : String
    let price: Double
    let photo : UIImage }


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
        
        arryDunkn.append(Dunkn.init(name: "ICED LATTE", price: 14, photo: UIImage(named: "ICED LATTE")!))
        arryDunkn.append(Dunkn.init(name: "DONUTS", price: 30, photo: UIImage(named: "DONUTS")!))
        arryDunkn.append(Dunkn.init(name: "Croissant Cheese", price: 7, photo: UIImage(named: "croissant-cheese")!))
        arryDunkn.append(Dunkn.init(name: "LATTE", price: 16, photo: UIImage(named: "LATTE")!))
        arryDunkn.append(Dunkn.init(name: "Black Coffee", price: 11, photo: UIImage(named: "Black Coffee")!))
        arryDunkn.append(Dunkn.init(name: "Packaged Coffee", price: 46, photo: UIImage(named: "Packaged Coffe")!))
        
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
        let cell = tabelView.dequeueReusableCell(withIdentifier: "cell") as! HomeTabelViewCell
        let data = arryDunkn[indexPath.row]
        //         function for image , title "name" and description "price" -> from cell "HomeTabelViewCell"
        cell.setupCell(photo: data.photo, name: data.name, price: data.price)
        //        The coding sgin " > "
        cell.accessoryType = .disclosureIndicator
        return cell
        
    }
    //    select the row and show details in ViewControllerShow
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameOfTitle = array[indexPath.row]
        performSegue(withIdentifier: "VC2", sender: self )
    }
}
