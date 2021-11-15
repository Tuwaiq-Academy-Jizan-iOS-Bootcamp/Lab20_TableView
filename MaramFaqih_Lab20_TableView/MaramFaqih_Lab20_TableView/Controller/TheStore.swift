//
//  TheStore.swift
//  MaramFaqih_Lab20_TableView
//
//  Created by meme f on 08/04/1443 AH.
//

import UIKit

class TheStore: UIViewController {
    
   
    @IBOutlet weak var storeTableView: UITableView!
    struct Products{
        var picName:String
        var title:String
        var subTitle:String
        var description:String
        init(picName:String,title:String,subTitle:String,description:String) {
            self.picName = picName
            self.title = title
            self.subTitle = subTitle
            self.description = description
        }
       

        
    }
   // var arrProducts = [Products]()
    
    //1- var arrProducts : [Products]=[obj1,obj2]
   // var arrProducts : [[Products]]=[[],[]]
    var arrProductsSection : [[Products]]=[[],[]]
    var titleProdect = ""
    var imageProdect = ""
    var descriptionProdect = ""
 
    var sections = ["H×W", "Oz"]

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        storeTableView.delegate = self
        storeTableView.dataSource = self
        //2- arrProducts.append(obj1)
//        arrProducts.append(Products(picName: "im1", title: "Pasta Bowls", subTitle: "45 Oz", description: "Dishes are sold individually.\n Material: Sand Stoneware \n Glaze: Ivory \n Use: Microwave Safe, Dishwasher Safe, Food Safe"))
//        arrProducts.append(Products(picName: "im2", title: "Small Dishes", subTitle: " 6.5” d x 1.5” h", description: "Dishes are sold individually.\n Material: Sand Stoneware \n Glaze: Ivory \n Use: Microwave Safe, Dishwasher Safe, Food Safe"))
//        arrProducts.append(Products(picName: "im3", title: "Black and white ceramic bowl", subTitle: "8” d x 2” h", description: "The Black and White splashes Dinnerware collection is currently available in the Pasta Bowl size and Shallow/Breakfast Bowl size options."))
//        arrProducts.append(Products(picName: "im4", title: "Stoneware ceramic tumbler", subTitle: "6 Oz", description: "Ceramic cup made from fantastic spotted clay, transparent glossy glaze inside, and the hand-painted pattern outside. The outside surface is clear clay, fantastic in touch, pure beauty."))
//        arrProducts.append(Products(picName: "im5", title: "Stoneware Ceramic Mug", subTitle: "4 Oz", description: "Please consider when you're buying this product. This size is for a double espresso and who love coffee with a little bit of milk."))
//        arrProducts.append(Products(picName: "im6", title: "Vintage Mug", subTitle: "12 Oz", description: "All of the pottery at Utopia Life is food safe and handmade \n A lead free porcelain glaze is used in their creation.\n All of my pottery is food, dishwasher, and microwave safe. \n This mug is made of porcelain and is glazed by hand."))
        arrProductsSection = [[Products(picName: "im2", title: "Small Dishes", subTitle: " 6.5” d x 1.5” h", description: "Dishes are sold individually.\n Material: Sand Stoneware \n Glaze: Ivory \n Use: Microwave Safe, Dishwasher Safe, Food Safe"),Products(picName: "im3", title: "Black and white ceramic bowl", subTitle: "8” d x 2” h", description: "The Black and White splashes Dinnerware collection is currently available in the Pasta Bowl size and Shallow/Breakfast Bowl size options.")] ,[Products(picName: "im1", title: "Pasta Bowls", subTitle: "45 Oz", description: "Dishes are sold individually.\n Material: Sand Stoneware \n Glaze: Ivory \n Use: Microwave Safe, Dishwasher Safe, Food Safe"),Products(picName: "im4", title: "Stoneware ceramic tumbler", subTitle: "6 Oz", description: "Ceramic cup made from fantastic spotted clay, transparent glossy glaze inside, and the hand-painted pattern outside. The outside surface is clear clay, fantastic in touch, pure beauty."),      Products(picName: "im5", title: "Stoneware Ceramic Mug", subTitle: "4 Oz", description: "Please consider when you're buying this product. This size is for a double espresso and who love coffee with a little bit of milk."),Products(picName: "im6", title: "Vintage Mug", subTitle: "12 Oz", description: "All of the pottery at Utopia Life is food safe and handmade \n A lead free porcelain glaze is used in their creation.\n All of my pottery is food, dishwasher, and microwave safe. \n This mug is made of porcelain and is glazed by hand.") ]]
 
    }
    
 
  
   
  
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destintionToDetails = segue.destination as! ProductDetails


        destintionToDetails.TtitleLabelForDetails =  titleProdect
        destintionToDetails.TimageForDetails =  imageProdect
        destintionToDetails.TdescriptionLabelForDetails =  descriptionProdect

    }

}

extension TheStore : UITableViewDelegate, UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return arrProductsSection[section].count
          
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        
        var content = cell.defaultContentConfiguration()
        content.text = arrProductsSection[indexPath.section][indexPath.row].title
        content.secondaryText = arrProductsSection[indexPath.section][indexPath.row].subTitle
        content.image = UIImage(named: "\(arrProductsSection[indexPath.section][indexPath.row].picName)")//?.preparingThumbnail(of: CGSize(width: 50, height: 50))
        content.imageProperties.maximumSize = CGSize(width: 100, height: 100)
        
        
        
        
        
        cell.accessoryType = .disclosureIndicator
         cell.contentConfiguration=content
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellData = arrProductsSection[indexPath.section][indexPath.row]
        
          titleProdect = cellData.title
          imageProdect = cellData.picName
          descriptionProdect = cellData.description
        
        performSegue(withIdentifier: "details", sender: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
    }
    

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
    view.backgroundColor = .brown
    let label = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 40))
    label.text = sections[section]
    label.textColor = .white
    label.font = .systemFont(ofSize: 14, weight: .bold)
    view.addSubview(label)
    return view
  }
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.brown
//        (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.white
//    }
//

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return sections[section]

    }
    
    
}

