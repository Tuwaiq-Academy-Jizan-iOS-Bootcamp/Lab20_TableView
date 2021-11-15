//
//  ViewController.swift
//  TabelViewHomework
//
//  Created by Afrah Omar on 07/04/1443 AH.
//

import UIKit

struct Dunkn {
    var theName : String
    var theDetails: String
    var img : UIImage
}

class ViewController: UIViewController {
    
    var muneDunkn : [[Dunkn]] = [
        [Dunkn(theName: "ICED LATTE", theDetails: "Made with milk blended with our rich, freshly ground and brewed espresso", img:UIImage(named: "ICED LATTE")!),
         Dunkn(theName: "LATTE", theDetails: "Made with steamed, frothy milk, blended with our rich, freshly ground and brewed espresso", img:UIImage(named: "LATTE")!),
         Dunkn(theName: "Black Coffee", theDetails: "BREWED SLOW. SERVED FAST", img:UIImage(named: "Black Coffee")!)],
        [Dunkn(theName: "Croissant Cheese", theDetails: "Made with our freshly products of dough and cheese", img:UIImage(named: "croissant-cheese")!),
         Dunkn(theName: "DONUTS", theDetails: "Our delicious donuts come in a variety of flavors and are free of artificial dyes, so there’s a favorite for everyone.", img:UIImage(named: "DONUTS")!),
         Dunkn(theName: "Packaged Coffee", theDetails:"Enjoy your favorite coffee at home", img:UIImage(named: "Packaged Coffe")!)]]
    
    //  Variabels For Select
    var sendTitle = ""
    var sendSupTitle = ""
    var theImg = UIImage(named: "")
    //    Variabel for Header & Footer in  section
    var sectionTitles = ["Coffee","Other"]
    
    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    
    
    //    Send element ViewaController to ViewControllerShow by segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendTo = segue.destination as! ViewControllerShow
        
        sendTo.theTitle = sendTitle
        sendTo.image = theImg
        sendTo.descriptionDunkn = sendSupTitle
    }
    
    // Delegate and Data Source
}
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        
        
        //        Step 1 : Create The Content
        var content = cell.defaultContentConfiguration()
        
        content.text = muneDunkn[indexPath.section][indexPath.row].theName
        //        The Number Of Line For The Second Title
        content.secondaryTextProperties.numberOfLines = 1
        //        The Second Title
        content.secondaryText = muneDunkn[indexPath.section][indexPath.row].theDetails
        //        The content for imgae
        content.image = muneDunkn[indexPath.section][indexPath.row].img
        //        size image
        content.imageProperties.maximumSize = CGSize(width: 70, height: 70)
        //        The coding sgin " > "
        cell.accessoryType = .disclosureIndicator
        //         Step 3
        cell.contentConfiguration = content
        
        return cell
        
    }
    //     The Select ...
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sendTitle = muneDunkn[indexPath.section][indexPath.row].theName
        sendSupTitle = muneDunkn[indexPath.section][indexPath.row].theDetails
        theImg =  muneDunkn[indexPath.section][indexPath.row].img
        performSegue(withIdentifier: "VC2", sender: self )
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return muneDunkn[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return muneDunkn.count
    }
    
    func tableView( _ tableView: UITableView, titleForHeaderInSection section : Int) -> String? {
        return sectionTitles[section]
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == sectionTitles.count - 1{
            return "Finish Mune"
        }else {
            return ""
        }
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
            view.backgroundColor = .systemOrange
            let label = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 40))
            label.text = sectionTitles[section]
            label.textColor = .white
            view.addSubview(label)
            return view
        }
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 40
            
        }
        
    }
}
