//
//  ViewController.swift
//  trainingtableview
//
//  Created by Bushra Barakat on 09/04/1443 AH.
//

import UIKit
struct Flowers {
    var flowerName: String
    var flowerDetails: String
    var flowerImage: UIImage
    
}
class ViewController: UIViewController {
    var name = ""
    var details = ""
    var image = UIImage ()

    
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        arrayOfFlowers.append(flower1)
        arrayOfFlowers.append(flower2)
        arrayOfFlowers.append(flower3)
        arrayOfFlowers.append(flower4)
        arrayOfFlowers.append(flower5)
        arrayOfFlowers.append(flower6)
        arrayOfFlowers.append(flower7)
        arrayOfFlowers.append(flower8)
        arrayOfFlowers.append(flower9)
        arrayOfFlowers.append(flower10)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = segue.destination as! ViewControllerTwo
        sender.flowerName = name
        sender.flowerDescripation = details
        sender.flowerImage = image
        
    }
    
    
var arrayOfFlowers : [Flowers] = []
var flower1 = Flowers(flowerName: "Cherry blossom", flowerDetails: "Cherry blossoms have a special and unique beauty and are the most beautiful type of flower. This flower is known that its origin in Japan, as it is called in the country of Japan the sakura cherry blossoms.It should be noted that cherry blossoms have a lot of significance in Japanese culture, as the appearance of cherry blossoms symbolizes the new beginning of life.Cherry blossoms begin to appear at the beginning of spring and begin to bloom at the end of March or may bloom at the beginning of April.", flowerImage: UIImage (named: "cherry blossom")!)
var flower2 = Flowers(flowerName: "Chrysanthemum flower", flowerDetails: "The meanings of the chrysanthemum flower in the language of flowers vary according to its location around the world. In East Asian countries, the chrysanthemum flower means the birth of a new life, and therefore it is considered one of the distinctive gifts for birthday occasions. On the other hand, in European countries, chrysanthemums express sympathy, and in America the chrysanthemum is a flower that refers to Honor and respect.", flowerImage: UIImage(named: "chrysanthemum flower")!)
var flower3 = Flowers(flowerName: "Iris flower", flowerDetails: "As a result of the captivating fragrance of the iris, it has been considered a royal flower. The iris in the language of flowers means many positive words such as hope, faith and wisdom. The blue or purple iris indicates luxury and royalty, while the yellow iris indicates passion. The iris flower also expresses courage, and is an ideal gift in Graduation and work occasions, in addition to congratulatory occasions on recovery from illness, or the birth of a new child, and birthdays. The iris flower means when you give it the phrase “You are a special person, and you can shine in your life more than that.", flowerImage: UIImage(named:"iris flower")!)
var flower4 = Flowers(flowerName: "Jasmin flower", flowerDetails: "We can say that it is a very suitable flower for your loved one, because with it we will convey our affection. Therefore, it is becoming more and more popular to make wedding bouquets from their flowers. It is also a representation of humility, simplicity, and sociability.Jasmine, in any of its colors, would be more than a suitable gift for your loved ones. But yellow jasmine will be most suitable when you want to congratulate a person who has achieved success in his work, since this color is closely associated with professional success, as we have seen recently.", flowerImage: UIImage(named: "jasmin flower")!)
var flower5 = Flowers(flowerName: "Lily flower", flowerDetails: "The meanings of flowers generally refer to femininity, tenderness and peace, and this meaning has been known since ancient times, and this flower refers to several meanings taken from its shape, as the meaning of the lily flower is linked to heaven and the blessed land and the place of the settlement of souls, and the meaning of the lily flower symbolizes femininity, paradise and bliss. The blooming lily flower with five corollas resembles the sun's rays, so the meaning of the lily flower also refers to light and rays, and the five corollas in the lily flower symbolize the five senses in man, and the meaning of the lily flower refers to the human iris and the rainbow. As for the white lily flower, it refers to purity.", flowerImage: UIImage(named: "lily flower")!)
var flower6 = Flowers(flowerName: "Lotus flower", flowerDetails: "It is one of the most beautiful flowers in the world.It symbolizes many cultures that exist in many countries around the world.In addition, the lotus flower is seen as a sign of purity for speech and mind as well and that in the Pharaonic civilization, the lotus flower is seen to stand for the sun and that the lotus flower in India is associated with beauty and also has a connection to spiritual reality.", flowerImage: UIImage(named: "lotus flower")!)
var flower7 = Flowers(flowerName: "Narcissus flower", flowerDetails: "Narcissus flowers bloom in the spring, and it expands slowly, its color is yellow and golden, which makes it the most beautiful type of flower.The Chinese view the daffodil flower as a symbol of wealth and celebration as well.Knowing that the narcissus flower is one of the most beautiful types of flowers that have a very beautiful and fragrant smell.", flowerImage: UIImage(named: "narcissus flower")!)
var flower8 = Flowers(flowerName: "Orchid flower", flowerDetails: "It was mentioned that the meaning of the orchid flower has more than one meaning, but it is known that it is one of the Greek plants that was then classified as one of the orchids. It got its name from a Greek word called Orchis and you can find it in its pure white color or get it in many forms. We say that this flower was in the past denoting tenderness and strength at the same time, in addition to the luxury and beauty enjoyed by the flower, which consists of only three parts, and some have described it as a symbol of fertility and purity, in addition to magic, love and beauty, so this is what makes it glamorous Attractive history.", flowerImage: UIImage(named: "orchidflower")!)
var flower9 = Flowers(flowerName: "Sun flower", flowerDetails: "The sunflower contributes to raising the spirits of those who look at it, as it is cheerful and warm, and it is likened to the warm and lively sunlight, and therefore it is a solar flower par excellence. It disappears, and then the hammer of its head remains until the sun rises again, and the sunflower is a unique flower because it is able to provide food and energy, and the sunflower flower expresses vitality and happiness, and therefore it is the perfect gift to brighten the face of a close person.", flowerImage: UIImage(named:"sun flower")!)
var flower10 = Flowers(flowerName: "Tulip flower", flowerDetails: "The tulip flower also refers in its meaning to new beginnings, which made it a symbol of the celebration of marriage, which is a new beginning in the lives of both partners, and is considered a symbol of the celebration of the 11th anniversary of marriage, in which both spouses present tulips to each other, as an expression of their desire to renew wedding vows", flowerImage: UIImage(named: "tulip flower")!)
                           
                          
                        
    

}
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfFlowers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = arrayOfFlowers[indexPath.row].flowerName
        content.secondaryText = arrayOfFlowers[indexPath.row].flowerDetails
        content.secondaryTextProperties.numberOfLines = 2
        content.image = arrayOfFlowers[indexPath.row].flowerImage
        let size = CGSize(width: 90, height: 90)
        content.imageProperties.maximumSize = size
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration = content
        
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Injoy"
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Flowers"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        name = arrayOfFlowers[indexPath.row].flowerName
        details = arrayOfFlowers[indexPath.row].flowerDetails
        image = arrayOfFlowers[indexPath.row].flowerImage
        performSegue(withIdentifier: "segue", sender: self)
        
    
}


}
