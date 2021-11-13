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
        case "Black Mage": jobRelasticImage.image = UIImage(named: "Relastic BLM")
            jobDescreption.text = descreptionsResever
        case "Dark Knight": jobRelasticImage.image = UIImage(named: "Relastic DRK")
            jobDescreption.text = descreptionsResever
        case "Asterlogian": jobRelasticImage.image = UIImage(named: "Relastic AST")
            jobDescreption.text = descreptionsResever
        case "Machinist": jobRelasticImage.image = UIImage(named: "Relastic MCH")
            jobDescreption.text = descreptionsResever
        case "White Mage": jobRelasticImage.image = UIImage(named: "Relastic WTM")
            jobDescreption.text = descreptionsResever
        case "Dragoon": jobRelasticImage.image = UIImage(named: "Relastic DRG")
            jobDescreption.text = descreptionsResever
        case "Ninja": jobRelasticImage.image = UIImage(named: "Relastic NIN")
            jobDescreption.text = descreptionsResever
        case "Monk": jobRelasticImage.image = UIImage(named: "Relastic MNK")
            jobDescreption.text = descreptionsResever
        case "Bard": jobRelasticImage.image = UIImage(named: "Relastic BRD")
            jobDescreption.text = descreptionsResever
        case "Scolar": jobRelasticImage.image = UIImage(named: "Relastic SCL")
            jobDescreption.text = descreptionsResever
        case "Summoner": jobRelasticImage.image = UIImage(named: "Relastic SMN")
            jobDescreption.text = descreptionsResever
        case "Warrior": jobRelasticImage.image = UIImage(named: "Relastic WAR")
            jobDescreption.text = descreptionsResever
        default: print("Error")
        }
    }
}
extension JobsIntroduction: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        return false
    }
}
