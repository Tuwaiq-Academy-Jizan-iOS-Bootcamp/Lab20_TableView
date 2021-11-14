import UIKit
struct Players
{
var name: String
var image: UIImage
var Detals: String
}
class ViewController: UIViewController
{
    @IBOutlet var myTableView: UITableView!
var arrayOfPlayers: [Players] = []
var player1 = Players(name: "Fawaz Al-Qarni", image: UIImage(named:"Fawaz Al-Qarni")!, Detals: "Born in Jeddah  he made his debut for Al-Ittihad in a 3–0 win at home to Al Ittifaq on 6 August 2012 On 2014 July Al-Qarni joinedAl-Shabab on a three-year deal")
var player2 = Players(name: "Ali Al-Bulaihi", image: UIImage(named:"Ali Al-Bulaihi")!, Detals: "Al-Bulaihi had short spells for Al-Nahada and Al-Fateh between 2014 until 2017 which he played in the AFC Champions League for Al-Fateh in 2017,In 21 June 2017, Al-Hilal signed Ali on a free transfer with a three-year contract")
var player3 = Players(name: "Ziyad Al-Sahafi", image: UIImage(named: "Ziyad Al-Sahafi")!, Detals: "born in 17 October 1994 is a Saudi Arabian footballer who plays as a defender and midfielder for Al-Ittihad  in the Saudi Professional League")
var player4 = Players(name: "Sultan Al-Ghanam", image: UIImage(named: "Sultan Al-Ghanam")!, Detals: "Sultan Al-Ghannam is a Saudi football player who plays in the right-back position and currently plays for Al-Nasr Club He played in the age groups at Al-Zalfi Club, moved to Al-Faisaly in 2015 and moved to Al-Nasr Club in 2018")
var player5 = Players(name: "Nasser Al-Dawsari", image: UIImage(named:"Nasser Al-Dawsari")!, Detals: "Nasser Al-Dawsari (born 19 December 1998) is a Saudi Arabian footballer who plays as a midfielder and plays as left defender for Al-Hilal and also for saudi national team")
var player6 = Players(name: "Mohamed Kanno", image: UIImage(named:"Mohamed Kanno")!, Detals: "Mohamed Ibrahim Kanno  ( born 22 September 1994 ) is a Saudi Arabian football player who plays as a central midfielder for Al-Hilal.")
var player7 = Players(name: "Salman Al-faraj", image: UIImage(named:"Salman Al-faraj")!, Detals: "( born 1 August 1989 ) is a Saudi Arabian professional footballer who plays as a midfielder and captains both Al-Hilal and the Saudi Arabia national football team.On 25 June 2018, Salman scored the equalizing goal and his first ever World Cup goal from the penalty kick in a 2–1 victory over Egypt in their last group stage match of the tournament; it was Saudi Arabia's lone win in the tournament as the team crashed out of the group stage.")
var player8 = Players(name: "Ali Al-Asmari", image: UIImage(named:"Ali Al-Asmari")!, Detals: "Ali Al-Asmari ( born 12 January 1997) is a Saudi Arabian footballer who plays as a midfielder for Saudi Arabian club Al-Ahli.")
var player9 = Players(name: "Salem Al-Dawsari", image: UIImage(named:"Salem Al-Dawsari")!, Detals: "Salem Muhamed al-Dawsari ( born 19 August 1991) is a Saudi Arabian footballer who plays as a winger for Al-Hilal and the Saudi Arabia national team.In the second leg of the 2019 AFC Champions League Final on 24 November, Al-Dawsari scored the opening goal in an eventual 2–0 away win over Urawa Red Diamonds, which saw Al-Hilal win the title following a 3–0 aggregate victory; the title allowed them to qualify for the 2019 FIFA Club World Cup.")
var player10 = Players(name: "Firas Al-Buraikan", image: UIImage(named:"Firas Al-Buraikan")!, Detals: "Firas Al-Buraikan ( born 14 May 2000) is a Saudi Arabian professional footballer who plays as a striker for Pro League side Al-Fateh")
var player11 = Players(name: "Saleh Al-Shehri", image: UIImage(named:"Saleh Al-Shehri")!, Detals: "Saleh Khaled Al-Shehri (born 1 November 1993) is a Saudi football player who currently plays for Al-Hilal and the Saudi Arabia national team as a striker.Saleh made his debut on 2 September 2012 at Beira-Mar against Moreirense and he scored the first goal for his first match. Saleh is the first Saudi Arabian to score in Europe. At his second match against Vitória he scored the fastest goal in Primeira Liga 12/13.")

    
    var goalKiper = [Players]()
    var defense = [Players]()
    var midfield = [Players]()
    var attack = [Players]()
    var saudiTeam = [[Players]]()
    let arrayOfcenter = ["goalKiper","Defanders","midfield","attack"]
//    var attackPlayers: [Players] = []
//    var array1 = [Players]()
//    var array2 = [Players]()
//    var bossArray = [[Players]]()
//    let arrayOfChar = ["attak"]
    
    
var nameContant = ""
var detailsContant = ""
var imageContant = UIImage(named: "")

    override func viewDidLoad()
    {
        super.viewDidLoad()
//        defense = [player1,player2]
//        array2 = [player3,player4]
//        multyarray = [array1,array2]
        goalKiper = [player1]
        defense = [player2,player3,player4,player5]
        midfield = [player6,player7,player8,player9]
        attack = [player10,player11]
        saudiTeam = [goalKiper,defense, midfield, attack]
        
        myTableView.delegate = self
        myTableView.dataSource = self
        arrayOfPlayers.append(player1)
        arrayOfPlayers.append(player2)
        arrayOfPlayers.append(player3)
        arrayOfPlayers.append(player4)
        arrayOfPlayers.append(player5)
        arrayOfPlayers.append(player6)
        arrayOfPlayers.append(player7)
        arrayOfPlayers.append(player8)
        arrayOfPlayers.append(player9)
        arrayOfPlayers.append(player10)
        arrayOfPlayers.append(player11)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
     {
         let detailsVC = segue.destination as! DetailsViewController
         detailsVC.nameOfPlayers = nameContant
         detailsVC.imageOfPlayes = imageContant
         detailsVC.detilsOfPlayers = detailsContant
     }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return saudiTeam[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return saudiTeam.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    var content = cell.defaultContentConfiguration()
        content.text = saudiTeam[indexPath.section][indexPath.row].name
        content.secondaryText = saudiTeam[indexPath.section][indexPath.row].Detals
    let sizeOfImage = CGSize(width: 55, height: 55)
        content.secondaryTextProperties.numberOfLines = 1
        content.secondaryTextProperties.color = UIColor(red: 46/255.0, green: 204/255.0, blue: 113/255.0, alpha: 1.0)
        content.textProperties.color = UIColor(red: 100/255.0, green: 150/255.0, blue: 100/255.0, alpha: 1.0)
        content.image = saudiTeam[indexPath.section][indexPath.row].image.preparingThumbnail(of: sizeOfImage)
        cell.contentConfiguration = content
    return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
            nameContant = saudiTeam[indexPath.section][indexPath.row].name
            imageContant = saudiTeam[indexPath.section][indexPath.row].image
            detailsContant = saudiTeam[indexPath.section][indexPath.row].Detals

            performSegue(withIdentifier: "fromVc1ToVc2", sender: self)
        }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayOfcenter[section]
    }
//    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return arrayOfChar[section]
//    }
}
