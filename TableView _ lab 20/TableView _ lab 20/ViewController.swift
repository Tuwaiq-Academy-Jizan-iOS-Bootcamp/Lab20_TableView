
import UIKit

struct Fruits {
    var image : UIImage
    var name : String
    var description : String
}

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var arrayOfFruits :[Fruits] = []
    
    var nameF = ""
    var imageF = UIImage(named: "")
    var disF = ""
    
    
    var Fruit01 = Fruits(image: UIImage(named:"Apple")!,
                         name: "Apple",
                         description: "This is a popular fruit for people of all ages")
    var fruit02 = Fruits(image: UIImage(named: "Banana")!, name: "Banana", description: "This is a popular fruit for people of all ages")
    var fruit03 = Fruits(image: UIImage(named: "Lemon")!, name: "Lemon", description: "This is a popular fruit for people of all ages")
    var fruit04 = Fruits(image: UIImage(named: "Mango")!, name: "Mango", description: "This is a popular fruit for people of all ages")
    var fruit05 = Fruits(image: UIImage(named: "Orange")!, name: "Orange", description: "This is a popular fruit for people of all ages")
    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        arrayOfFruits.append(Fruit01)
        arrayOfFruits.append(fruit02)
        arrayOfFruits.append(fruit03)
        arrayOfFruits.append(fruit04)
        arrayOfFruits.append(fruit05)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as!DetailsViewController
        detailsVC.nameFruits = nameF
        detailsVC.discriptionFruits = disF
        detailsVC.image = imageF
    }

}
extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfFruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        var content = cell.defaultContentConfiguration()
        
        let sizeOfmyImage = CGSize.init(width: 45, height: 45)
        content.imageProperties.maximumSize = sizeOfmyImage
        content.image = arrayOfFruits [indexPath.row].image
        content.text = arrayOfFruits [indexPath.row].name
        content.secondaryText = arrayOfFruits [indexPath.row].description
        content.secondaryTextProperties.numberOfLines = 2
        
        cell.contentConfiguration = content
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        nameF = arrayOfFruits [indexPath.row].name
        imageF = arrayOfFruits [indexPath.row].image
        disF = arrayOfFruits [indexPath.row].description
        
        performSegue(withIdentifier: "ToDV", sender: self)
    }
}
