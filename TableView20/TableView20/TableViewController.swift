//
//  TableViewController.swift
//  TableView20
//
//  Created by grand ahmad on 08/04/1443 AH.
//

import UIKit
class TableViewController: UITableViewController {
    var selectedModel: Model?
    let data: [Model] = [
        Model(title: "King AbduAziz", description: "Imam and founder of the third Saudi state King of Hejaz and Sultan of Nejd and its annexes founder of Saudi Arabia The fourteenth ruler of the House of Saud", imageName: "abdu1"),
        Model(title: "King Fahad", description: "Fahd bin Abdulaziz bin Abdul Rahman Al Saud, the fifth king of the Kingdom of Saudi Arabia and the first to take the title of Custodian of the Two Holy Mosques. He is the ninth son of King Abdul Aziz Wajabat", imageName: "fahad1"),
        Model(title: "King Abdullah", description: "Abdullah bin Abdulaziz bin Abdul Rahman Al Saud, the sixth king of the Kingdom of Saudi Arabia, and he is called the Custodian of the Two Holy Mosques, and it is the same title that King Fahd took before him. He is the twelfth son of King Abdulaziz’s male sons, and his mother is Fahda (King of Humanity)", imageName: "face1"),
        Model(title: "King Salman", description: "Salman bin Abdulaziz bin Abdul Rahman Al Saud, the seventh king of the Kingdom of Saudi Arabia, the Prime Minister and Supreme Commander of all military forces, the twentieth ruler of the Al Saud family and the twenty-fifth son of the founding King Abdul Aziz bin Abdul Rahman Al Saud", imageName: "salman1"),
        Model(title: "Mohammed Bin Salman", description: "Mohammed bin Salman bin Abdulaziz bin Abdul Rahman bin Faisal bin Turki bin Abdullah bin Muhammad bin Saud, the current crown prince now", imageName: "mohammed1"),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let details = segue.destination as! DetalisViewController
        //        نقله ارسله للفيو تو
        details.model = selectedModel
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
//        cell.imgView?.backgroundColor = .red
//        cell.image = UIImage(named: data[indexPath.row].title)!
        cell.accessoryType = .disclosureIndicator
        cell.imgView.image = UIImage(named: data[indexPath.row].imageName)!
        cell.titleLabel!.text = data[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedModel = data[indexPath.row]
        
        performSegue(withIdentifier: "VC2", sender: self)
        
      
    }
}

