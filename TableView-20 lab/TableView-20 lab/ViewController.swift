//
//  ViewController.swift
//  TableView-20 lab
//
//  Created by grand ahmad on 09/04/1443 AH.
//

import UIKit
struct Model {
    var title: String
    var description: String
    var imageName: UIImage
}

class ViewController: UIViewController {
var title1 = ""
    var title2 = ""
    var image1 = UIImage()
    @IBOutlet weak var myTableView: UITableView!
    var king1 = Model(title: "King AbduAziz", description: "Imam and founder of the third Saudi state King of Hejaz and Sultan of Nejd and its annexes founder of Saudi Arabia The fourteenth ruler of the House of Saud", imageName: UIImage(named: "abdu1")!)
    var king2 = Model(title: "King Fahad", description: "Fahd bin Abdulaziz bin Abdul Rahman Al Saud, the fifth king of the Kingdom of Saudi Arabia and the first to take the title of Custodian of the Two Holy Mosques. He is the ninth son of King Abdul Aziz Wajabat", imageName: UIImage(named:"fahad1")!)
    var king5 = Model(title: "King Abdullah", description: "Abdullah bin Abdulaziz bin Abdul Rahman Al Saud, the sixth king of the Kingdom of Saudi Arabia, and he is called the Custodian of the Two Holy Mosques, and it is the same title that King Fahd took before him. He is the twelfth son of King Abdulaziz’s male sons, and his mother is Fahda (King of Humanity)", imageName: UIImage(named: "lofe")!)
    var king3 = Model(title: "King Salman", description: "Salman bin Abdulaziz bin Abdul Rahman Al Saud, the seventh king of the Kingdom of Saudi Arabia, the Prime Minister and Supreme Commander of all military forces, the twentieth ruler of the Al Saud family and the twenty-fifth son of the founding King Abdul Aziz bin Abdul Rahman Al Saud", imageName: UIImage(named: "salman1")!)
    var king4 = Model(title: "Mohammed Bin Salman", description: "Mohammed bin Salman bin Abdulaziz bin Abdul Rahman bin Faisal bin Turki bin Abdullah bin Muhammad bin Saud, the current crown prince now", imageName: UIImage(named: "Mohammed1")!)
    var arrayKing: [Model] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        arrayKing.append(king1)
        arrayKing.append(king2)
        arrayKing.append(king3)
        arrayKing.append(king4)
        arrayKing.append(king5)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = segue.destination as! ViewController2
        sender.title1 = title1
        sender.description2 = title2
        sender.image1 = image1
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayKing.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //        عشان يحفظ لي البيانات داخل الخليه
        var content = cell.defaultContentConfiguration()
        cell.accessoryType = .disclosureIndicator
     
        
        content.text = arrayKing[indexPath.row].title
        content.secondaryText = arrayKing[indexPath.row].description
        
//        content.text = "Titla"
//        content.secondaryText = "Secondary Text"
        content.secondaryTextProperties.numberOfLines = 2
        let sizeImage = CGSize(width: 30, height: 30)
        content.image = arrayKing[indexPath.row].imageName.preparingThumbnail(of: sizeImage)
       cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        title1 =  arrayKing[indexPath.row].title
        title2 = arrayKing[indexPath.row].description
        image1 = arrayKing[indexPath.row].imageName
        performSegue(withIdentifier: "segueVC2", sender: self)
    }
    
    
  
}

