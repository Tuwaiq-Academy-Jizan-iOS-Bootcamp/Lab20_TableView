//
//  ViewController.swift
//  TableView-20 lab
//
//  Created by grand ahmad on 09/04/1443 AH.
//

import UIKit
class ViewController: UIViewController {
    var title1 = ""
    var title2 = ""
    var image1 = UIImage()
    @IBOutlet weak var myTableView: UITableView!
    
    var sectionTitles = ["Section1","Section2","Section3"]
    var array = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = segue.destination as! ViewController2
        sender.title1 = title1
        sender.description2 = title2
        sender.image1 = image1
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return itmes[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return itmes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //        عشان يحفظ لي البيانات داخل الخليه
        var content = cell.defaultContentConfiguration()
        cell.accessoryType = .disclosureIndicator
        let sizeImage = CGSize(width: 30, height: 30)
        
            content.text = itmes[indexPath.section][indexPath.row].title
            content.secondaryText = itmes[indexPath.section][indexPath.row].description
            content.secondaryTextProperties.numberOfLines = 2
        content.image = UIImage(named: itmes[indexPath.section][indexPath.row].imageName)!.preparingThumbnail(of: sizeImage)
        
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            title1 = itmes[indexPath.section][indexPath.row].title
            title2 = itmes[indexPath.section][indexPath.row].description
            image1 = UIImage(named: itmes[indexPath.section][indexPath.row].imageName)!
        performSegue(withIdentifier: "segueVC2", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
        view.backgroundColor = .systemPink
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 40))
        label.text = sectionTitles[section]
        label.textColor = .white
//        label.textAlignment = .center
        view.addSubview(label)
        return view
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var titleForHeader: String?
        if section == 0 {
            titleForHeader = "KING KSA"
        } else {
            titleForHeader = "DRs"
        }
        return titleForHeader
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
//        func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//            return "Team 3"
//        }

    
}
