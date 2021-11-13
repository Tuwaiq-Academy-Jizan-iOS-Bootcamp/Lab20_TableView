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
    var arrProducts = [Products]()
   
    var titleProdect = ""
    var imageProdect = ""
    var descriptionProdect = ""
 
   
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        storeTableView.delegate = self
        storeTableView.dataSource = self
        arrProducts.append(Products.init(picName: "im1", title: "Pasta Bowls", subTitle: "45 Oz", description: "Dishes are sold individually.\n Material: Sand Stoneware \n Glaze: Ivory \n Use: Microwave Safe, Dishwasher Safe, Food Safe"))
        arrProducts.append(Products.init(picName: "im2", title: "Small Dishes", subTitle: " 6.5” d x 1.5” h", description: "Dishes are sold individually.\n Material: Sand Stoneware \n Glaze: Ivory \n Use: Microwave Safe, Dishwasher Safe, Food Safe"))
        arrProducts.append(Products.init(picName: "im3", title: "Black and white ceramic bowl", subTitle: "8” d x 2” h", description: "The Black and White splashes Dinnerware collection is currently available in the Pasta Bowl size and Shallow/Breakfast Bowl size options."))
        arrProducts.append(Products.init(picName: "im4", title: "Stoneware ceramic tumbler", subTitle: "6Oz", description: "Ceramic cup made from fantastic spotted clay, transparent glossy glaze inside, and the hand-painted pattern outside. The outside surface is clear clay, fantastic in touch, pure beauty."))
        arrProducts.append(Products.init(picName: "im5", title: "Stoneware Ceramic Mug", subTitle: "4Oz", description: "Please consider when you're buying this product. This size is for a double espresso and who love coffee with a little bit of milk."))
        arrProducts.append(Products.init(picName: "im6", title: "Vintage Mug", subTitle: "12 Oz", description: "All of the pottery at Utopia Life is food safe and handmade \n A lead free porcelain glaze is used in their creation.\n All of my pottery is food, dishwasher, and microwave safe. \n This mug is made of porcelain and is glazed by hand."))
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
        return arrProducts.count
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        var content = cell.defaultContentConfiguration()
        content.text = arrProducts[indexPath.row].title
        content.secondaryText = arrProducts[indexPath.row].subTitle
        content.image = UIImage(named: "\(arrProducts[indexPath.row].picName)")
        content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration=content
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellData = arrProducts[indexPath.row]
        
          titleProdect = cellData.title
          imageProdect = cellData.picName
          descriptionProdect = cellData.description
        
        performSegue(withIdentifier: "details", sender: indexPath)
        
        
    }
   
    
    
    
}

