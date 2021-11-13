import UIKit
class ViewController: UIViewController
{

    @IBOutlet var PlayersTableView: UITableView!
    let arrayOfPlayers = ["Fawaz Al-Qarni","Ali Al-Bulaihi","Ziyad Al-Sahafi","Sultan Al-Ghanam","Nasser Al-Dawsari","Mohamed Kanno","Salman Al-faraj","Ali Al-Asmari","Salem Al-Dawsari","Firas Al-Buraikan","Saleh Al-Shehri"]
    
let arrayOfPlayersCenters = ["GK","LCB","RCB","RB","LB","DM","CM","RW","LW","CF","CF"]
let arrayOfPlayersDescription = [
"Born in Jeddah  he made his debut for Al-Ittihad in a 3–0 win at home to Al Ittifaq on 6 August 2012 On 2014 July Al-Qarni joinedAl-Shabab on a three-year deal"

,"Al-Bulaihi had short spells for Al-Nahada and Al-Fateh between 2014 until 2017 which he played in the AFC Champions League for Al-Fateh in 2017,In 21 June 2017, Al-Hilal signed Ali on a free transfer with a three-year contract"

,"born in 17 October 1994 is a Saudi Arabian footballer who plays as a defender and midfielder for Al-Ittihad  in the Saudi Professional League"

,"Sultan Al-Ghannam is a Saudi football player who plays in the right-back position and currently plays for Al-Nasr Club He played in the age groups at Al-Zalfi Club, moved to Al-Faisaly in 2015 and moved to Al-Nasr Club in 2018"

,"Nasser Al-Dawsari (born 19 December 1998) is a Saudi Arabian footballer who plays as a midfielder and plays as left defender for Al-Hilal and also for saudi national team"

,"Mohamed Ibrahim Kanno  ( born 22 September 1994 ) is a Saudi Arabian football player who plays as a central midfielder for Al-Hilal."

,"( born 1 August 1989 ) is a Saudi Arabian professional footballer who plays as a midfielder and captains both Al-Hilal and the Saudi Arabia national football team.On 25 June 2018, Salman scored the equalizing goal and his first ever World Cup goal from the penalty kick in a 2–1 victory over Egypt in their last group stage match of the tournament; it was Saudi Arabia's lone win in the tournament as the team crashed out of the group stage."

,"Ali Al-Asmari ( born 12 January 1997) is a Saudi Arabian footballer who plays as a midfielder for Saudi Arabian club Al-Ahli."

,"Salem Muhamed al-Dawsari ( born 19 August 1991) is a Saudi Arabian footballer who plays as a winger for Al-Hilal and the Saudi Arabia national team.In the second leg of the 2019 AFC Champions League Final on 24 November, Al-Dawsari scored the opening goal in an eventual 2–0 away win over Urawa Red Diamonds, which saw Al-Hilal win the title following a 3–0 aggregate victory; the title allowed them to qualify for the 2019 FIFA Club World Cup."

,"Firas Al-Buraikan ( born 14 May 2000) is a Saudi Arabian professional footballer who plays as a striker for Pro League side Al-Fateh"

,"Saleh Khaled Al-Shehri (born 1 November 1993) is a Saudi football player who currently plays for Al-Hilal and the Saudi Arabia national team as a striker.Saleh made his debut on 2 September 2012 at Beira-Mar against Moreirense and he scored the first goal for his first match. Saleh is the first Saudi Arabian to score in Europe. At his second match against Vitória he scored the fastest goal in Primeira Liga 12/13."]
    
    var playersNameAndImagesfromVc1ToVc2 = ""
    var playersDescriptionfromVc1ToVc2 = ""
    override func viewDidLoad()
{
super.viewDidLoad()
    PlayersTableView.delegate = self
    PlayersTableView.dataSource = self
}
override func prepare(for segue: UIStoryboardSegue, sender: Any?)
{
let playersDataToDescriptionVc = segue.destination as? DescriptionViewController
    playersDataToDescriptionVc?.firstDataConnectorfromVc1toVc2 = playersNameAndImagesfromVc1ToVc2
        
let playersData2ToDescriptionVc = segue.destination as? DescriptionViewController
    playersData2ToDescriptionVc?.secondDataConnectorfromVc1toVc2 = playersDescriptionfromVc1ToVc2
}
}
extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayOfPlayers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let orEnyName = PlayersTableView.dequeueReusableCell(withIdentifier: "players") as! TableViewCell
        orEnyName.imgeInTheCell.image = UIImage(named: arrayOfPlayers[indexPath.row])
        orEnyName.label1.text = arrayOfPlayers[indexPath.row]
        orEnyName.lable2.text = arrayOfPlayersCenters[indexPath.row]
        return orEnyName
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        playersNameAndImagesfromVc1ToVc2 = arrayOfPlayers[indexPath.row]
        playersDescriptionfromVc1ToVc2 = arrayOfPlayersDescription[indexPath.row]
        performSegue(withIdentifier: "fromVc1ToVc2", sender: self)
    }
    
}

