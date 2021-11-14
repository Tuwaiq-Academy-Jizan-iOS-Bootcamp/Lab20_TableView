//
//  ViewController.swift
//  tabelView
//
//  Created by Afaf Yahya on 06/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tabelView: UITableView!
    var nameOfLable = ""
    var arrname = ["Blueberry","Cranberry","Rasberry","Strawberry"]
    var arrayimage = ["Blueberry","Cranberry","Rasberry","Strawberry"]
    var arraydesc = ["Blueberries, a shrubby plant that spreads","The sharp currant is a small plant with red fruits that belongs to the heather family","Red berries are a rich source of many different vitamins and minerals","trawberry is a plant species in the genus of rosemary"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let goTo = segue.destination as? TheScundViewController
        goTo?.textForLap = nameOfLable
    }

}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = arrname[indexPath.row]
        content.secondaryText = String(arraydesc[indexPath.row])
        content.image = UIImage(named: "\(arrayimage[indexPath.row])")
        content.imageProperties.maximumSize = CGSize(width: 60, height: 60)
        cell.contentConfiguration = content
        
        return cell
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       nameOfLable = arrname[indexPath.row]
        performSegue(withIdentifier: "goToVieowControleer", sender: self)
    }
}
