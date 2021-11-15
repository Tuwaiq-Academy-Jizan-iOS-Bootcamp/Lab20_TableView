//
//  ViewController.swift
//  lab20
//
//  Created by Ahlam Ahlam on 10/04/1443 AH.
//

import UIKit
class ViewController:UIViewController{
  
    // add three Section to one array
    
    var arrayOfSection: [[APPSaudiaArabia]] = []
    var arrayOfSections1: [APPSaudiaArabia] = []
    var arrayOfSection2: [APPSaudiaArabia] = []
    var arrayOfSection3:[APPSaudiaArabia] = []
    //use for Name  heder,foteer
    
    var titleSection = ["SectionA","SectionB","SectionC"]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var selectAPPSaudiaArabia:APPSaudiaArabia?
    
    
    var app1 = APPSaudiaArabia(image: "image1", name: "Tawkklna", description: "Proceeding from the keenness of the government of the Kingdom of Saudi Arabia - may God support it - to preserve the health and safety of citizens and residents on its lands from the danger of the spread of the new Corona virus; The Saudi Data and Artificial Intelligence Authority has launched the application, in order to support government efforts to confront the Corona virus.")
    
    var app2 = APPSaudiaArabia(image: "image2", name: "Umrah", description: "Proceeding from the desire of the Ministry of Hajj and Umrah to provide comfort and safety for pilgrims and visitors in light of the restrictions and precautionary measures imposed by the Corona pandemic, with the need to secure pilgrims and pilgrims in every corner of the Hajj and Umrah and visit the Grand Mosque, the Prophet’s Mosque and all Hajj sites. Therefore, the Ministry of Hajj saw the need to provide an application for Umrah to facilitate the requesters of permits for Umrah and visit")
    var app3 = APPSaudiaArabia(image: "image3", name: "Tatman", description: "The (Tatman) application is an electronic application that aims to enhance the commitment of all those who have been directed to sanitary isolation, in order to enable continuous follow-up of them and their health status, and to open a direct communication channel, as part of the efforts of the various authorities that have made preserving human health at the forefront of their concerns and top priorities ")
    
    var app4 = APPSaudiaArabia(image: "image4", name: "Absher", description: "The Absher platform, with its three branches (Absher Individuals), (Absher Business) and (Absher Government), is the leading platform in providing electronic services in the Kingdom of Saudi Arabia and the Arab region Which is one of the main pillars in achieving the Kingdom's Vision 2030 in order to facilitate the movement of government transactions, expand the circle of electronic services and adopt transparency and objectivity.")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
arrayOfSections1 = [app1]
        arrayOfSection2 = [app2]
        arrayOfSection3 = [app3,app4]
        arrayOfSection = [arrayOfSections1,arrayOfSection2,arrayOfSection3]
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let GoTo = segue.destination as! ViweContrllerSecend

        GoTo.selectAPPSaudiaArabia = selectAPPSaudiaArabia
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfSection[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: arrayOfSection[indexPath.section][indexPath.row].image)
        content.imageProperties.maximumSize = CGSize(width: 40, height: 40)
        content.text = arrayOfSection[indexPath.section][indexPath.row].name
        content.secondaryText = arrayOfSection[indexPath.section][indexPath.row].description
        content.secondaryTextProperties.numberOfLines = 2
        cell.contentConfiguration = content
            cell.accessoryType = .disclosureIndicator
        return cell
        
        }

    func tableView(_  tableView: UITableView, didSelectRowAt IndexPath: IndexPath){

        selectAPPSaudiaArabia = arrayOfSection[IndexPath.section][IndexPath.row]
        performSegue(withIdentifier: "GoTo", sender: self)

    }
        
        
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
    return titleSection[section]
        
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
   
    
        return "the end of \(titleSection[section] ) "
    }
    
    
    
}




