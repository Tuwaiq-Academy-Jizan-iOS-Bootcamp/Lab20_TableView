import UIKit
class JobsIntroduction: UIViewController {
    @IBOutlet weak var jobRelasticImage: UIImageView!
    @IBOutlet weak var jobName: UILabel!
    @IBOutlet weak var jobDescreption: UITextView!
    var namesResever = ""
    var descreptionsResever = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        jobDescreption.delegate = self
        jobName.text = namesResever
        switch namesResever {
        case "Paladine": jobRelasticImage.image = UIImage(named: "Relastic PLD")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.blue
        case "Black Mage": jobRelasticImage.image = UIImage(named: "Relastic BLM")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.purple
        case "Dark Knight": jobRelasticImage.image = UIImage(named: "Relastic DRK")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.red
        case "Asterlogian": jobRelasticImage.image = UIImage(named: "Relastic AST")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.tintColor
        case "Machinist": jobRelasticImage.image = UIImage(named: "Relastic MCH")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.darkGray
        case "White Mage": jobRelasticImage.image = UIImage(named: "Relastic WTM")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.systemPink
        case "Dragoon": jobRelasticImage.image = UIImage(named: "Relastic DRG")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.systemIndigo
        case "Ninja": jobRelasticImage.image = UIImage(named: "Relastic NIN")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.purple
        case "Monk": jobRelasticImage.image = UIImage(named: "Relastic MNK")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.systemYellow
        case "Bard": jobRelasticImage.image = UIImage(named: "Relastic BRD")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.systemGreen
        case "Scolar": jobRelasticImage.image = UIImage(named: "Relastic SCL")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.magenta
        case "Summoner": jobRelasticImage.image = UIImage(named: "Relastic SMN")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.systemRed
        case "Warrior": jobRelasticImage.image = UIImage(named: "Relastic WAR")
            jobDescreption.text = descreptionsResever
            jobName.textColor = UIColor.orange
        default: print("Error")
        }
    }
}
extension JobsIntroduction: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        return false
    }
}
