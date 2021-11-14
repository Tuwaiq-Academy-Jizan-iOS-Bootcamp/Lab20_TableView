

import UIKit
class ViewController:UIViewController{
    @IBOutlet weak var myTableView: UITableView!
   var arrayVegetable = ["eggplant","tomates","patato","okra"]
    var arrayImage = ["image1","image2","image3","image4"]
    var arrayDiscreption = ["Did you eat potatoes have a role in reducing the risk of heart disease? This and more potatoes discovered through the article the following benefits.",
"benefits.  The benefits of tomatoes for the bodyWe will mention to you the most important benefits of tomatoes, as follows:Fighting cancer It proved that tomatoes and the nutrients in them are able to get answers from cancers, such as: cancers of the digestive system, breast, lungs and prostate.This is due to the fact that it contains very high levels of the very simple, lycopene, which is concentrated in the peel of tomatoes, which gives the red color to tomatoes, in addition to containing vitamins A and C.",
  "Regulating the level of sugar in the blood and limiting its rise It facilitates digestion Reduce your constipation Get rid of excess weight due to the fact that it contains fiber and is low in calories.Zucchini regulates the level of cholesterol in the blood and limits its ", "Details of these benefits are as follows: Lower cholesterolFor the period of studies, the relationship of eating eggplant and lowering cholesterol in the blood.A 2014 study study conducted on laboratory animals, it was found that eating eggplant juice significantly reduced weight and cholesterol levelsIn laboratory analyzes of the phenolic compounds found in eggplant, the results of which were published in the Journal of Agricultural Research in 2004, it was found that high eggplant contains quantities of chlorogenic acid."]
    
    var contentTitel = ""
    var contentImage = UIImage(named: "image1")
    var contentDescription = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let GoTo = segue.destination as! ViweContrllerSecend
        GoTo.labelcontent = contentTitel
        GoTo.Description = contentDescription
        GoTo.imageb = contentImage
    }
}
    
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayVegetable.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: arrayImage[indexPath.row])
        content.imageProperties.maximumSize = CGSize(width: 40, height: 40)
        content.text = arrayVegetable[indexPath.row]
        content.secondaryText = arrayDiscreption[indexPath.row]
        content.secondaryTextProperties.numberOfLines = 2
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        return cell
        }
    
    func tableView(_  tableView: UITableView, didSelectRowAt IndexPath: IndexPath){
      contentTitel = arrayVegetable[IndexPath.row]
        contentDescription = arrayDiscreption[IndexPath.row]
        contentImage = UIImage(named: arrayImage[IndexPath.row])
        performSegue(withIdentifier: "GoTo", sender: self)
  
    }
}


