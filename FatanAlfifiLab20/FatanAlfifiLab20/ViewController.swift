import UIKit
struct KSA {
var NameOfCity : String
var Image : String
var Details : String
}
class ViewController: UIViewController {
var arrayCityName :[KSA] = []
var sendImage = ""
var sendDetails = ""
    var sendName = ""

    var ar0 = KSA(NameOfCity: "Riyadh", Image:"Riyadh", Details: "Riyadh is the capital of Saudi Arabia, its largest city and the third most populous Arab capital. Riyadh is located in the center of the Arabian Peninsula on the Najd plateau, at an altitude of 600 meters above sea level. It is the seat of the Emirate of Riyadh, according to the administrative division of the Saudi regions. The city of Riyadh is inhabited by about 10.5 million, according to the statistics of the year 2021")
            
    var ar1 = KSA(NameOfCity:"Dammam",Image: "Dammam",Details: "Dammam city is a very good city and located in the eastern part of Saudi Arabia. Dammam is a nice city because it is a developed city. It has many universities and collages. Also big companies like Aramco is there. The weather in Dammam is hot in the summer, but it is very nice during the winter")
            
    var ar2 = KSA(NameOfCity:"Jeddah",Image: "Jeddah",Details: "Jeddah city is one of the most beautiful cities in the country of Saudi Arabia. Jeddah city is a well known city for its beaches and shopping malls. The weather in Jeddah is usually hot in the summer with a high humidity. However, the weather in Jeddha is nice during the winter")
            
    var ar3 = KSA(NameOfCity:"Jazan",Image: "Jazan",Details: "Jazan region is one of the administrative regions of the Kingdom of Saudi Arabia, located in the southwest of the Kingdom and overlooking the Red Sea. And there is the port of Jizan, the third port of the Kingdom on the Red Sea coast in terms of capacity..The Jazan region is one of the land ports linking Saudi Arabia with the Republic of Yemen, as it is bordered on the south and southeast by it.")
                  
    var ar4 = KSA(NameOfCity:"Abha",Image: "Abha",Details: "Abha is one of the most famous cities in the Kingdom of Saudi Arabia. Abha is located in Asir Governorate, And specifically located  on one of the Hijaz mountain range, the mountains of Sarawat The city of Abha has a great historical position, where this city embraces many historical monuments represented by castles and old buildings. And it is also famous for a number of tourist attractions that make visitors come to this city, including")
                  
    var ar5 = KSA(NameOfCity:"Taif",Image: "Taif",Details: "Taif is the bride of the Saudi summer resorts and the city of roses. It is the city of the main cities, witnessing the tourist and aesthetic character. The city of Taif is located in the Makkah region, specifically on the eastern slopes of the Sarawat Mountains, at an altitude of 1700 m above sea level..This has earned it a reputation as a tourist and a tourist and a comeback since antiquity")
    

@IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
super.viewDidLoad()
TableView.delegate = self
TableView.dataSource = self
        
arrayCityName.append(ar0)
arrayCityName.append(ar1)
arrayCityName.append(ar2)
arrayCityName.append(ar3)
arrayCityName.append(ar4)
arrayCityName.append(ar5)
    }
override func prepare(for segue:UIStoryboardSegue, sender:Any?) {
    let detailsVC = segue.destination as! DetailsViewController
    detailsVC.name = sendName
    detailsVC.descript = sendDetails
    detailsVC.image = sendImage

}
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrayCityName.count
}
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
var content = cell.defaultContentConfiguration()

content.text = arrayCityName[indexPath.row].NameOfCity
   
content.secondaryText = arrayCityName[indexPath.row].Details
    content.secondaryTextProperties.numberOfLines = 1
  //  لاضافة علامه
cell.accessoryType = .disclosureIndicator
    
content.image = UIImage(named: arrayCityName[indexPath.row].Image)
//size image
                        
content.imageProperties.maximumSize = CGSize(width: 45, height: 45)
cell.contentConfiguration = content
return cell
                        }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "city"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "end"
    }
func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath){
    sendImage =  arrayCityName[indexPath.row].Image
    sendDetails = arrayCityName[indexPath.row].Details
    sendName = arrayCityName[indexPath.row].NameOfCity
    performSegue(withIdentifier: "Gooto", sender: self)
}

}
