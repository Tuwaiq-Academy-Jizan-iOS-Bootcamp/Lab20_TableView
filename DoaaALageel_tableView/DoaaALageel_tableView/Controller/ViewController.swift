//
//  ViewController.swift
//  DoaaALageel_tableView
//
//  Created by Dua'a ageel on 09/04/1443 AH.
//

import UIKit

struct Foursesone{
    var image : UIImage
    var nameSesone : String
    var description : String
   
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
   // var arrays = [["Summer","Autumn"],["Spring","winter"]]
    var arraySection : [[Foursesone]]=[[],[]]
   
    var sections = ["Best time to travel ✈️", " Best time to relax at home ☃️"]
    
    var titleName = ""
    var descriptionSesone = "Description Sesone"
    var imageName = UIImage(named: "Summer")
    var arrayContacts: [Foursesone] = []
    
    
    var sesone1 = Foursesone(image: UIImage(named: "Summer")!,
                             nameSesone: "Summer",
    description: "Summer is the hottest of the four temperate seasons, falling after spring and before autumn. At or around the summer solstice (about 3 days before Midsummer Day), the earliest sunrise and latest sunset occurs, the days are longest and the nights are shortest, with day length decreasing as the season progresses after the solstice.")
    
    var sesone2 = Foursesone(image: UIImage(named: "Autumn")!,
                             nameSesone: "Autumn",
    description: "Autumn is the season when the duration of daylight becomes noticeably shorter and the temperature cools considerably.")
                             
    var sesone3 = Foursesone(image: UIImage(named: "Spring")!,
                             nameSesone: "Spring",
     description: "Spring, also known as springtime, is one of the four temperate seasons, succeeding winter and preceding summer. There are various technical definitions of spring, but local usage of the term varies according to local climate, cultures and customs. ")
                             
                             
    var sesone4 = Foursesone(image: UIImage(named: "winter")!,
                          nameSesone: "winter",
         description: "Winter is the coldest season of the year in polar and temperate zones. It occurs after autumn and before spring in each year. Winter is caused by the axis of the Earth in that hemisphere being oriented away from the Sun.")
                             
   // arraySection = [[sesone1,sesone2],[sesone3,sesone4]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       // arrayContacts.append(sesone1)
       // arrayContacts.append(sesone2)
       // arrayContacts.append(sesone3)
       // arrayContacts.append(sesone4)
        arraySection = [[sesone1,sesone2],[sesone3,sesone4]]
       
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let send = segue.destination as! description
        send.lableNameSesone = titleName
       send.myimagesView = imageName!
        send.lableDec = descriptionSesone
    }
    
    
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
   
        return arraySection[section].count
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
             return sections.count
         }
      
        
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    var content = cell.defaultContentConfiguration()
    content.text = arraySection[indexPath.section][indexPath.row].nameSesone
    content.secondaryText = arraySection[indexPath.section][indexPath.row].description
    content.image = UIImage(named: "\(arraySection[indexPath.section][indexPath.row].nameSesone)")
    content.imageProperties.maximumSize = CGSize(width: 45, height: 100)
    content.secondaryTextProperties.numberOfLines = 2
    cell.accessoryType = .disclosureIndicator
    
    cell.contentConfiguration = content
    
    
    return cell
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        titleName = arraySection[indexPath.section][indexPath.row].nameSesone
        descriptionSesone = arraySection[indexPath.section][indexPath.row].description
        imageName =  UIImage(named: "\(arraySection[indexPath.section][indexPath.row].nameSesone)")
        
        performSegue(withIdentifier: "Tosend", sender: indexPath)
    }

    
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
            (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.systemPink
             (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.white
         }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

            return sections[section]
    
    
}

}
