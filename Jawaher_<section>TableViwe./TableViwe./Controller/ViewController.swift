//
//  ViewController.swift
//  TableViwe.
//
//  Created by Jawaher Mohammad on 09/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var selectedDrink:Drink?
    @IBOutlet weak var drinksTableView: UITableView!
   
    var drinks = [[Drink(drinkImage: "coffee1", drinkSuperTitle: "Espresso", drinkSubTitle: "COFFEE"),Drink(drinkImage: "coffee2", drinkSuperTitle: "Cappuccino", drinkSubTitle: "COFFEE"),Drink(drinkImage: "coffee3", drinkSuperTitle: "Latte", drinkSubTitle: "COFFEE"),Drink(drinkImage: "coffee4", drinkSuperTitle: "Caramel Machiatto", drinkSubTitle: "COFFEE")],[Drink(drinkImage: "juice1", drinkSuperTitle: "Orange Juice", drinkSubTitle: "JUICE"),Drink(drinkImage: "juice2", drinkSuperTitle: "Lemon Juice", drinkSubTitle: "JUICE")],[Drink(drinkImage: "iceCream1", drinkSuperTitle: "Ice Cream 1", drinkSubTitle: "ICE CREAM"),Drink(drinkImage: "iceCream2", drinkSuperTitle: "Ice Cream 2", drinkSubTitle: "ICE CREAM"),Drink(drinkImage: "iceCream3", drinkSuperTitle: "Ice Cream 3", drinkSubTitle: "ICE CREAM"),Drink(drinkImage: "iceCream4", drinkSuperTitle: "Ice Cream 4", drinkSubTitle: "ICE CREAM")]]
    var sectionTitlesForHeader = ["Coffee..","Juice..","Ice Cream.."]
    var sectionTitlesForFooter = ["..☕️..","..🍹..","..🍨.."]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = segue.destination as! ViewContentDetails
        sender.selectedDrink = selectedDrink
    }

}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinks[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return drinks.count
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()

        let size = CGSize(width: 50, height: 50)
        content.text = drinks[indexPath.section][indexPath.row].drinkSuperTitle
        content.secondaryText = drinks[indexPath.section][indexPath.row].drinkSubTitle
        content.image = UIImage(named: drinks[indexPath.section][indexPath.row].drinkImage)!.preparingThumbnail(of: size)
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionTitlesForHeader[section]
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        return sectionTitlesForFooter[section]
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedDrink = drinks[indexPath.section][indexPath.row]
        performSegue(withIdentifier: "segueToViewContentDetails", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
        }
    }
