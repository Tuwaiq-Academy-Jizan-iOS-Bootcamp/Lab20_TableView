import UIKit
struct Jobs {
    var name:String
    var descreption:String
    var type:String
}
class ViewController: UIViewController {
    let paladine = Jobs.init(name: "Paladine", descreption: "For centuries, the elite of the Sultansworn have served as personal bodyguards to the royal family of Ul'dah. Known as paladins, these men and women marry exquisite swordplay with stalwart shieldwork to create a style of combat uncompromising in its defense. Clad in brilliant silver armor, they charge fearlessly into battle, ever ready to lay down their lives for their liege To be a paladin is to protect, and those who choose to walk this path will become the iron foundation upon which the party's defense is built.", type: "Tank")
    let blackMage = Jobs(name: "Black Mage", descreption: "In days long past, there existed an occult and arcane art known as black magic—a potent magic of pure destructive force born forth by a sorceress of unparalleled power. Those who learned to wield this instrument of ruin came to be called black mages, out of both fear and respect for their gift. Yet great power served to corrupt the judgment of mortal man, and so he unknowingly set out upon the path of ruin. Adventurers who take the black will become agents of devastation, capable of annihilating those who oppose them through little more than the force of their will", type: "Range Magical DPS")
    let darkKnight = Jobs(name: "Dark Knight", descreption: "The pious Ishgardian clergy guide the flock, and the devout knights protect the weak. Yet even the holiest of men succumb to the darkest of temptations. None dare to administer justice to these sacrosanct elite residing outside the reach of the law. Who, then, defends the feeble from the transgressions of those meant to guide and protect them?. A valiant few take up arms to defend the downtrodden, and not even the holy priests and knights can escape their judgment. Pariahs in their own land, they are known by many as “dark knights. These sentinels bear no shields declaring their allegiance. Instead, their greatswords act as beacons to guide the meek through darkness.", type: "Tank")
    let asterlogian = Jobs(name: "Asterlogian", descreption: "Ever has man coveted knowledge, and none more so than that of his fate. Thus did he labor to master the skill of foresight—but initial efforts bore little fruit. That is, until he looked to the stars above, which foretell the coming seasons, and learned to read the heavens. Though this gift is known today as astrology, the people of Sharlayan saw fit to not only read the stars, but to write their movements as well. By attuning their aetherial energies to that of constellations, they learned to wield magicks with heretofore unseen properties. Thus was astromancy born—a new form of magick which grants its users power over fate. Employing a star globe and divining deck in their miraculous deeds, fortune always smiles upon these masters of arcana.", type: "Healer")
    let machinist = Jobs(name: "Machinist", descreption: "The war with Dravania rages on, brutal and unrelenting. With no end in sight, the Holy See grows desperate. As her dragoons lay down their lives in defense of their home, Ishgard turns to technology to protect her sons and daughters. Great cannons and ballistas now line the city walls, plucking dragons from the sky. Following the example of Cid Garlond, who has demonstrated the potency of magitek, the Skysteel Manufactory works tirelessly on the development of advanced armaments. As new and devastating weapons are brought to the fray, a new class of champion arises to wield them―the machinist.", type: "Range Phisical DPS")
    let whiteMage = Jobs(name: "White Mage", descreption: "White magic, the arcane art of succor, was conceived eras past that the world might know comfort. Alas, man began perverting its powers for self-gain, and by his wickedness brought about the Sixth Umbral catastrophe. Although the art subsequently became forbidden, it is now in the midst of a revival at the hands of the Padjal, chosen of the elementals. Those who would walk the path of the white mage are healers without peer, possessed of the power to deliver comrades from the direst of afflictions—even the icy grip of death itself.", type: "Healer")
    let dragoon = Jobs(name: "Dragoon", descreption: "Of all the things that are symbolic of the nation of Ishgard, few are more recognized than the dragoon. Born amidst the timeless conflict between men and dragons, these lance-wielding knights have developed an aerial style of combat, that they might better pierce the scaled hides of their mortal foes. Taking to the firmament as though it were an extension of the land, they descend upon the enemy with every onze of their bodies behind the blow. It is this penetrative power that characterizes the dragoon.", type: "Melee Phisical DPS")
    let ninja = Jobs(name: "Ninja", descreption: "Hailing from the war-torn lands of the Far East, the secret arts of the ninja were born of necessity, and have since given rise to a unique breed of highly-trained combatants. Able to manipulate the vital energies of the land, the air, and living beings, they manifest their power through the weaving of signs, unleashing a wide array of attacks against their foes. Master the arts of the ninja and learn to bend the tide of battle to your will.", type: "Close Magical DPS")
    let monk = Jobs(name: "Monk", descreption: "Though now under Garlean rule, the city-state of Ala Mhigo once boasted the greatest military might of all Eorzea. Among its standing armies were the monks—ascetic warriors as dreaded by foes on the field of battle as the city-state's great pikemen. The monks comprised an order known as the Fist of Rhalgr, and it was to this god—the Destroyer—that they devoted their lives of worship. By mastering seats of power within the body known as chakra, they are capable of performing extraordinary physical feats.", type: "Melee Phisical DPS")
    let bard = Jobs(name: "Bard", descreption: "The word <bard> ordinarily puts folk in mind of those itinerant minstrels, fair of voice and nimble of finger, who earn their coin performing in taverns and the halls of great lords. Few know, however, that bards in fact trace their origins back to the bowmen of eld, who sang in the heat of battle to fortify the spirits of their companions. In time, their impassioned songs came to hold sway over the hearts of men, inspiring their comrades to great feats and granting peace unto those who lay upon the precipice of death.", type: "Range Phisical DPS")
    let scolar = Jobs(name: "Scolar", descreption: "In an age long past, when mankind flourished under the radiance of arcane mastery, the island of Vylbrand was home to a city-state called Nym. Though the history of that age tells of countless wars waged with earth-shattering incantations, it was the brilliant strategic maneuvering of Nym's scholars that allowed their mundane army of mariners to throw back would-be conquerors time and again. These learned men and women defended the freedom of their tiny nation with their unique command over spell-weaving faeries, utilizing the creatures' magicks to heal the wounded and bolster the strength of their allies.", type: "Healer")
    let summoner = Jobs(name: "Summoner", descreption: "The beast tribes of Eorzea worship and summon forth beings known as primals, among which are Ifrit, Garuda, and Titan. Yet what is a god to one man is a demon to another, for the city-states of Eorzea see these beings as a grave threat to their collective survival. In times immemorial, there lived mages who had not only the power to summon the primals, but also the means to transmute the primals' essences, thus binding them to their will. Known simply as summoners, the existence of these men and women and their arcane art have been all but lost to the ages.", type: "Range Magical DPS")
    let warrior = Jobs(name: "Warrior", descreption: "On the northernmost edge of Abalathia's Spine exists a mountain tribe renowned for producing fearsome mercenaries. Wielding greataxes and known as warriors, these men and women learn to harness their inner-beasts and translate that power to unbridled savagery on the battlefield In former times which saw war waged ceaselessly in Eorzea, the warriors featured prominently on the front lines of battle. With the arrival of peacetime, however, their art has descended into the shadows of obscurity, where it remains to this day.", type: "Tank")
    var jobsNamesSender = ""
    var jobDescreptionsSender = ""
    var arrayOfJobs = [Jobs]()
    @IBOutlet weak var jobsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfJobs.append(paladine)
        arrayOfJobs.append(blackMage)
        arrayOfJobs.append(darkKnight)
        arrayOfJobs.append(asterlogian)
        arrayOfJobs.append(machinist)
        arrayOfJobs.append(whiteMage)
        arrayOfJobs.append(dragoon)
        arrayOfJobs.append(ninja)
        arrayOfJobs.append(monk)
        arrayOfJobs.append(bard)
        arrayOfJobs.append(scolar)
        arrayOfJobs.append(summoner)
        arrayOfJobs.append(warrior)
        jobsTableView.delegate = self
        jobsTableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dataSender = segue.destination as? JobsIntroduction
        dataSender?.namesResever = jobsNamesSender
        dataSender?.descreptionsResever = jobDescreptionsSender
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfJobs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = jobsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var contain = cell.defaultContentConfiguration()
        contain.image = UIImage(named: arrayOfJobs[indexPath.row].name)
        contain.text = arrayOfJobs[indexPath.row].name
        contain.secondaryText = arrayOfJobs[indexPath.row].type
        cell.contentConfiguration = contain
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        jobsNamesSender = arrayOfJobs[indexPath.row].name
        jobDescreptionsSender = arrayOfJobs[indexPath.row].descreption
        performSegue(withIdentifier: "toJobIntroduction", sender: self)
    }
}
