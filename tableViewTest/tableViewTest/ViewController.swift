//
//  ViewController.swift
//  tableViewTest
//
//  Created by يوسف جابر المالكي on 06/04/1443 AH.
//

import UIKit

 struct player {
     var image: UIImage
     var name: String
     var details: String
 }

 class ViewController: UIViewController {

     @IBOutlet var myTableView: UITableView!



//     var arrayBirthday = ["yousef","almalki","touiq", "1000"]
     var titleContent = ""
     var descripText = "Description Text !"
     var defaultImage = UIImage(named: "knight")
     var arrayOfContact: [player] = []

     var Thief = player(image: UIImage(named: "Thief")!,
                              name: "Thief",
                              details: "Nothin Now  informtion for Thief🥲):")
     var knight = player(image: UIImage(named: "knight")!,
                              name: "KNIGHT",
                              details: "Nothin Now informtion for Knight🤗):")
     var wizard = player(image: UIImage(named: "Wizard")!,
                              name: "Wizard",
                              details: "Nothin Now informtion for Monster😃 ):")
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         
         myTableView.delegate = self
         myTableView.dataSource = self

         arrayOfContact.append(Thief)
         arrayOfContact.append(knight)
         arrayOfContact.append(wizard)
     }

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let detailsVC = segue.destination as! detailsViewController

         detailsVC.textForLabel = titleContent
         detailsVC.descriptionForLabel = descripText
         detailsVC.imageForImageView = defaultImage!

     }
 }

 extension ViewController: UITableViewDelegate, UITableViewDataSource {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return arrayOfContact.count
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         cell.accessoryType = .disclosureIndicator

         var content = cell.defaultContentConfiguration()

         let targetSize = CGSize(width: 40, height: 40)
         content.imageProperties.maximumSize = targetSize
         content.image = arrayOfContact[indexPath.row].image

         content.text = arrayOfContact[indexPath.row].name

         content.secondaryText = arrayOfContact[indexPath.row].details
         content.secondaryTextProperties.numberOfLines = 2

         cell.contentConfiguration = content

         return cell
     }

     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print("Row : \(indexPath.row)")

         titleContent = arrayOfContact[indexPath.row].name
         defaultImage = arrayOfContact[indexPath.row].image
         descripText = arrayOfContact[indexPath.row].details

         performSegue(withIdentifier: "segDetailsView", sender: self)

     }

     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return "My player"
     }

     func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
         return "The end of my Player !!"
     }
 }
