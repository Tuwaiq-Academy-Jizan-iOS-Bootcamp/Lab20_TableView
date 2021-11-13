//
//  ViewController.swift
//  GhaziShubayli_lab20
//
//  Created by ماك بوك on 08/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
var arrayFruit = ["mango","moz","ambarod","ananas", "caraz","enab","frawla","habhab","khmethra","limon","roman"]
    var datapass = ""
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let moveTo = segue.destination as? ViewControllerGhazi
        moveTo?.reciver = datapass
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayFruit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Go") as! TableViewCell
        cell.imageShow.image = UIImage(named: arrayFruit[indexPath.row])
        cell.lbltitle.text = arrayFruit[indexPath.row]
        cell.lblSub.text = "the fruits are good"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        datapass = arrayFruit[indexPath.row]
        
        
        performSegue(withIdentifier: "cell", sender: self)
    }
}
