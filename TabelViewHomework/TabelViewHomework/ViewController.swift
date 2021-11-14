//
//  ViewController.swift
//  TabelViewHomework
//
//  Created by Afrah Omar on 07/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    //     Var Name
    var arrayname = ["ICED LATTE","DONUTS","croissant-cheese", "LATTE", "Black Coffee", "Packaged Coffe"]
    //     Var image
    var arrImg = ["ICED LATTE","DONUTS","croissant-cheese", "LATTE", "Black Coffee", "Packaged Coffe"]
    //     var details
    var arrprice = [ "Made with milk blended with our rich, freshly ground and brewed espresso","Our delicious donuts come in a variety of flavors and are free of artificial dyes, so there’s a favorite for everyone.","Made with our freshly products of dough and cheese ", "Made with steamed, frothy milk, blended with our rich, freshly ground and brewed espresso", "BREWED SLOW. SERVED FAST.", "Enjoy your favorite coffee at home"]
    //     var for the select
    var nameOfTitle = ""
    
    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource = self
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
        return arrayname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        
        //        Step 1 : Create The Content
        var content = cell.defaultContentConfiguration()
        //         Step 2 add the conntent to the table View image , name and details
        
        //         The content for First Title
        content.text = arrayname[indexPath.row]
        //        The Number Of Line For The Second Title
        content.secondaryTextProperties.numberOfLines = 1
        //        The Second Title
        content.secondaryText = arrprice[indexPath.row]
        //        The content for imgae
        content.image = UIImage(named: arrImg[indexPath.row])
        //        size image
        content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        //        The coding sgin " > "
        cell.accessoryType = .disclosureIndicator
        //         Step 3
        cell.contentConfiguration = content
        
        return cell
        
        
    }
    //    select the row and show details in ViewControllerShow
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameOfTitle = arrayname[indexPath.row]
        
        performSegue(withIdentifier: "VC2", sender: self )
    }
}
