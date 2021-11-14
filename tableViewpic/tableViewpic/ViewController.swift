//
//  ViewController.swift
//  tableViewpic
//
//  Created by Abdulrhman Abuhyyh on 07/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var namoo = ""
    var sr = ""
    var array = ["AirPods Pro","IPhone 13 Pro Max","Apple Watch","Apple iPad Pro","Apple iPad Air","Apple iMac","Apple MacBook Pro","Apple TV","New Apple AirTag"]
    var arrayDiscription = ["","",""]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
 
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let senTo = segue.destination as? ViewControllerForData
        senTo?.titlName = namoo
        senTo?.sAR = sr
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCellData
        let array = array[indexPath.row]
        cell.cellImage.image = UIImage(named: array)
        cell.cellLabel.text = array
        cell.cellLableTwo.text = "Apple"

        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    namoo = array[indexPath.row]
        sr = array[indexPath.row]
        performSegue(withIdentifier: "VCTWO", sender: self)
        
    }
}
