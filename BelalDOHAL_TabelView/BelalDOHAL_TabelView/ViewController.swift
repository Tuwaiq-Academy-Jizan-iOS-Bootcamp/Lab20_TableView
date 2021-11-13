import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableOfClasses: UITableView!
    var nameOfClass = ""
    let classesArray = ["Paladine","Black Mage","Dark Knight","Asterlogian","Machinist","White Mage","Dragoon","Ninja","Monk","Bard","Scolar","Summoner","Warrior"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableOfClasses.delegate = self
        tableOfClasses.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendToDetails = segue.destination as? ClassesDetails
        sendToDetails?.nameOfClass = nameOfClass
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classesArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableOfClasses.dequeueReusableCell(withIdentifier: "cell") as! Classes
        let classes = classesArray[indexPath.row]
        cell.classImage.image = UIImage(named: classes)
        cell.className.text = classes
        switch classes {
        case "Paladine": cell.classType.text = "Tank"
        case "Black Mage": cell.classType.text = "Range Magical DPS"
        case "Dark Knight": cell.classType.text = "Tank"
        case "Asterlogian": cell.classType.text = "Healer"
        case "Machinist": cell.classType.text = "Range Phisical DPS"
        case "White Mage": cell.classType.text = "Healer"
        case "Dragoon": cell.classType.text = "Melee Phisical DPS"
        case "Ninja": cell.classType.text = "Close Magical DPS"
        case "Monk": cell.classType.text = "Melee Phisical DPS"
        case "Bard": cell.classType.text = "Range Phisical DPS"
        case "Scolar": cell.classType.text = "Healer"
        case "Summoner": cell.classType.text = "Range Magical DPS"
        case "Warrior": cell.classType.text = "Tank"
        default: print("Error")
        }
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameOfClass = classesArray[indexPath.row]
        performSegue(withIdentifier: "toDetails", sender: self)
    }
}

