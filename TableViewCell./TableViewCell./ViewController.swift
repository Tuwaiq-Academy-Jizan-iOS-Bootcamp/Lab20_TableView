

import UIKit
class ViewController:UIViewController{
    struct Vegetable {
       var image = ""
        var name = ""
        var description = ""
       
        
    }
    var arrayOfSection: [[Vegetable]] = []
    var arrayOfSections1: [Vegetable] = []
    var arrayOfSection2: [Vegetable] = []
    var arrayOfSection3:[Vegetable] = []
    @IBOutlet weak var myTableView: UITableView!
    
//    var arrayOfVegetable:[Vegetable] = []
    var contentTitel = ""
    var contentImage = UIImage(named: "image1")
    var contentDescription = ""
    var vegetable1 = Vegetable(image: "image1", name: "eggplant", description: "Did you eat potatoes have a role in reducing the risk of heart disease? This and more potatoes discovered through the article the following benefits.")
    var vegetable2 = Vegetable(image: "image2", name: "tomates", description: "benefits.  The benefits of tomatoes for the bodyWe will mention to you the most important benefits of tomatoes, as follows:Fighting cancer It proved that tomatoes and the nutrients in them are able to get answers from cancers, such as: cancers of the digestive system, breast, lungs and prostate.This is due to the fact that it contains very high levels of the very simple, lycopene, which is concentrated in the peel of tomatoes")
    var vegetable3 = Vegetable(image: "image3", name: "patato", description: "which gives the red color to tomatoes, in addition to containing vitamins A and C.Regulating the level of sugar in the blood and limiting its rise It facilitates digestion Reduce your constipation Get rid of excess weight due to the fact that it contains fiber and is low in calories.Zucchini regulates the level of cholesterol in the blood and limits its ")
    
    var vegetable4 = Vegetable(image: "image4", name: "okra", description: "Details of these benefits are as follows: Lower cholesterolFor the period of studies, the relationship of eating eggplant and lowering cholesterol in the blood.A 2014 study study conducted on laboratory animals, it was found that eating eggplant juice significantly reduced weight and cholesterol levelsIn laboratory analyzes of the phenolic compounds found in eggplant, the results of which were published in the Journal of Agricultural Research in 2004, it was found that high eggplant contains quantities of chlorogenic acid")
      
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
//               arrayOfVegetable.append(vegetable1)
//              arrayOfVegetable.append(vegetable2)
//              arrayOfVegetable.append(vegetable3)
//               arrayOfVegetable.append(vegetable4)
arrayOfSections1 = [vegetable1]
        arrayOfSection2 = [vegetable2]
        arrayOfSection3 = [vegetable3,vegetable4]
        arrayOfSection = [arrayOfSections1,arrayOfSection2,arrayOfSection3]
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let GoTo = segue.destination as! ViweContrllerSecend
        GoTo.labelcontent = contentTitel
        GoTo.Description = contentDescription
        GoTo.imageb = contentImage
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfSection[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: arrayOfSection[indexPath.section][indexPath.row].image)
        content.imageProperties.maximumSize = CGSize(width: 40, height: 40)
        content.text = arrayOfSection[indexPath.section][indexPath.row].name
        content.secondaryText = arrayOfSection[indexPath.section][indexPath.row].description
        content.secondaryTextProperties.numberOfLines = 2
        cell.contentConfiguration = content
            cell.accessoryType = .disclosureIndicator
        return cell
        
        }

    func tableView(_  tableView: UITableView, didSelectRowAt IndexPath: IndexPath){
        contentTitel = arrayOfSection[IndexPath.section][IndexPath.row].name
        contentDescription = arrayOfSection[IndexPath.section][IndexPath.row].description
        contentImage = UIImage(named: arrayOfSection[IndexPath.section][IndexPath.row].image)
        performSegue(withIdentifier: "GoTo", sender: self)

    }
        
        
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "First Vegetable"
    }
  
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
     return "Last Vegetable"
    }
    
    
    
    
 
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        ...
//        return sectionCount
//    }
//
//
//
    
    
    
}




