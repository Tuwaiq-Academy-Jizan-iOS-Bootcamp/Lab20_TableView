//
//  ViewController.swift
//  DimitriSMITH_TableViewDemo
//
//  Created by Dimitri SMITH on 11/11/2021.
//

import UIKit

struct Contacts {
    var image: UIImage
    var name: String
    var details: String
}

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    
    
    
    var arrayBirthday = ["Happy","BirthDay","Ahlam", ":)"]
    var titleContent = ""
    var descriptionText = "Description Text !"
    var defaultImage = UIImage(named: "SwiftLogo")
    var arrayOfContact: [Contacts] = []
    
    var player01 = Contacts(image: UIImage(named: "DonovanMitchell")!,
                             name: "Donovan Mitchell",
                             details: "Mitchell was ejected due to his actions in the aftermath of a scuffle that broke out between Rudy Gobert and Myles Turner. Fortunately, the star guard will only miss a few minutes of game time due to the late ejection. He's averaging 29.4 points over his last five contests")
    var player02 = Contacts(image: UIImage(named: "JaMorant")!,
                             name: "Ja Morant",
                             details: "Morant was basically the only bright spot for the Grizzlies, who fell to another disappointing loss. So poor was the loss that only two players scored in double-digits for the Grizzlies, the other being Jaren Jackson, who ended with 19 points, four rebounds, two blocks and one assist in 26 minutes. All-in-all, it's been a really nice start for Morant but the team needs to right the ship if they hope to push for a playoff spot once again this season")
    var player03 = Contacts(image: UIImage(named: "MasonPlumlee")!,
                             name: "Mason Plumlee",
                             details: "Plumlee was one of two Hornets to log double-digit rebounds in Friday's victory, but his shot volume remained limited against the Knicks. The 31-year-old has scored in double figures just once in his last nine appearances, and Friday's performance marked the first time that he topped 10 rebounds since Oct. 27")
    var player04 = Contacts(image: UIImage(named: "WendellCarterJr")!,
                             name: "Wendel Carter Jr",
                             details: "During Wednesday's loss to the Nets, Carter was poked in the eye and could not return to the contest. However, he was removed from the injury report, implying he avoided any serious injury and will be available for Saturday's contest against Washington")
    var player05 = Contacts(image: UIImage(named: "JordanPool")!,
                             name: "Jordan Pool",
                             details: "Poole has been on another level recently and has scored at least 25 points in each of the last three contests. The 22-year-old put together a well-rounded performance in Sunday's victory and has averaged 27.3 points, 2.3 assists and 2.3 rebounds in 30.0 minutes per game across his last three appearances.")
    var player06 = Contacts(image: UIImage(named: "AndreIguodala")!,
                             name: "Andre Iguadala",
                             details: "Iguodala sat out Sunday's contest due to a hip injury, but he appears to be healthy for Monday's matchup against the Hawks. The veteran is averaging 3.7 points, 4.6 rebounds and 3.9 assists across 20.4 minutes during his first season back in Golden State. With Otto Porter (foot) out Monday, Iguodala should garner plenty of minutes off the bench.")
    var player07 = Contacts(image: UIImage(named: "BradleyBeal")!,
                             name: "Bradley Beal",
                             details: "Beal will not play this weekend as he mourns the passing of his grandmother. In his absence, Aaron Holiday and Raul Neto should see extra minutes in the backcourt.")
    var player08 = Contacts(image: UIImage(named: "BrandonIngram")!,
                             name: "Brandon Ingram",
                             details: "Ingram logged a full practice Thursday but will be held out of game action for a seventh consecutive matchup. It's not yet clear whether he'll be available for Saturday's contest against the Grizzlies.")
    var player09 = Contacts(image: UIImage(named: "JordanPool")!,
                             name: "Jordan Pool",
                             details: "Poole has been on another level recently and has scored at least 25 points in each of the last three contests. The 22-year-old put together a well-rounded performance in Sunday's victory and has averaged 27.3 points, 2.3 assists and 2.3 rebounds in 30.0 minutes per game across his last three appearances.")
    var player10 = Contacts(image: UIImage(named: "DemarDerozan")!,
                             name: "Demar Derozan",
                             details: "DeRozan was productive and efficient en route to a convincing win over Kevin Durant and the Nets. DeRozan's hot start hasn't subtracted much from Zach LaVine (24 points, 10-17 FG), as both players are currently sporting career-high player efficiency ratings. The backcourt mates will have an exploitable matchup against Dallas come Wednesday. Both teams' offenses rank among the top five in the league for pace.")
    var player11 = Contacts(image: UIImage(named: "DonteDivencenzo")!,
                             name: "Donte Divencenzo",
                             details: "The Villanova product missed Wednesday's season opener as well due to his recovery from offseason ankle surgery. It is unclear when Milwuakke expects DiVincenzo to return to the lineup as he is still without a firm timetable. Grayson Allen and Jordan Nwora seem to be the prime candidates to receive more opportunities during Divincenzo's absence, as they both saw over 20 minutes during Wednesday's win over Brooklyn.")
    var player12 = Contacts(image: UIImage(named: "PreciusAchiuwa")!,
                             name: "Precius Achiuwa",
                             details: "Achiuwa landed on the injury report Friday with right shoulder tendinitis. It's unclear how severe the injury is, but his status for Saturday is in jeopardy. Fellow backup center Khem Birch is also listed as questionable for Saturday's contest, so if they are sidelined then Chris Boucher may see extended minutes in a reserve role behind Pascal Siakam.")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        arrayOfContact.append(player01)
        arrayOfContact.append(player02)
        arrayOfContact.append(player03)
        arrayOfContact.append(player04)
        arrayOfContact.append(player05)
        arrayOfContact.append(player06)
        arrayOfContact.append(player07)
        arrayOfContact.append(player08)
        arrayOfContact.append(player09)
        arrayOfContact.append(player10)
        arrayOfContact.append(player11)
        arrayOfContact.append(player12)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as! DetailsViewController
        
        detailsVC.textForLabel = titleContent
        detailsVC.descriptionForLabel = descriptionText
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
        descriptionText = arrayOfContact[indexPath.row].details
        
        performSegue(withIdentifier: "segDetailsView", sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "My Fantasy Team"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "The end of my Team !!"
    }
}

