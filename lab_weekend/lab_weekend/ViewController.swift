//
//  ViewController.swift
//  lab_weekend
//
//  Created by dahma alwani on 09/04/1443 AH.
//

import UIKit


struct ContentElements {
    var theImage : UIImage
    var theName : String
    var theDetails : String
}

class ViewController: UIViewController {

    @IBOutlet weak var theTableView: UITableView!
    
    var myArrayImage = ["berryTart", "chocolate", "fruit", "strawberry", "muffin", "panCake", "macron"]
    var theTitle = ""
    var theDescriptions = ""
    
    var theRealImage = UIImage(named: "")
    var arrayContents : [ContentElements] = []
       
// .................................................................
var berryTart = ContentElements(theImage: UIImage(named: "berryTart")!, theName: "BERRY TART", theDetails:"Combine the sugar, flour, cinnamon and nutmeg, stir into smashed blueberries Spread mixture evenly into crust, sprinkle with one cup of the remaining whole blueberries Place tart pan on a baking sheet Bake in oven for half hour or until crust is browned and filling is bubbly")
//.................................................................
var chocolate = ContentElements(theImage: UIImage(named: "chocolate")!, theName: "CHOCOLATE CAKE", theDetails: "Sift the dry ingredients into a large bowl first to get rid of any hard lumps caused during storage, while getting more air into the mixture. Then add in your wet ingredients. Just keep in mind that the cake batter is VERY thin. Don’t be tempted to add more flour as this is what makes the cake super soft and moist.")
//.................................................................
var fruit = ContentElements(theImage: UIImage(named:"fruit" )!, theName: "FRUIT CAKE", theDetails: "Packed with fruit and nuts, each slice should look like a colorful mosaic. The pumpkin pie spice-kissed batter is really just there to hold the spiked fruits together—all seven cups of 'em! Fruit cake can be eaten fresh, but also gets better with age, so plan ahead. To age a fruit cake: After the baked loaves have cooled, wrap them in a layer of cheesecloth that has been soaked in a liquor such as whiskey or brandy and place in an airtight container in a cool, dry spot in your house. Let the cakes age for six weeks, drizzling lightly with alcohol every week or two (or when the cheesecloth appears dry). After the fruit cakes age, they are ready for optimal eating and gifting")
//..................................................................
var strawberry = ContentElements(theImage: UIImage(named: "strawberry")!, theName: "STRAWBERRY CAKE", theDetails: "Preheat oven and prepare cake pans.Sift cake flour and whisk dry ingredients.In an electric mixer cream butter and sugar Mix in eggs and yolks separately then blend in vanilla. Blend in flour mixture alternating with additions of milk. Divide among cake pans and bake until set. Let cool then fresh with strawberry cream cheese whipped cream.")
//.................................................................
var muffin = ContentElements(theImage: UIImage(named: "muffin")!, theName: "MUFFIN", theDetails:"The muffin batter starts with basic dry ingredients like flour, baking powder + soda, and salt. More often than not, I add ground cinnamon. The only time I don’t add it is when we’re preparing a citrus-y flavored muffin. The wet ingredients are just as simple. Creamed butter and sugar, plus 2 eggs, vanilla, sour cream/plain yogurt, and milk. That’s it. Based on the flavor of the muffin, I use brown sugar or granulated sugar. I use either plain Greek yogurt or sour cream based on what I have. Same with milk– whole milk, 1% milk, buttermilk, almond milk– honestly, it all works in this master muffin recipe.")
//.................................................................
var panCake = ContentElements(theImage: UIImage(named: "panCake")!, theName: "PANCAKE", theDetails:"Use a 1/4 cup measuring cup to pour your batter so you get perfect, evenly sized pancakes. Start pouring from the middle, then continue pouring slowly in a circular motion so that the batter spreads into perfect round shapes. Allow the pancakes to cook properly! Don’t rush them on high heat, or flip them too early. Let that under-side cook to a beautiful golden brown colour, and when bubbles start forming on top and around the surface (batter side), they are ready to flip.")
//...................................................................
var macron = ContentElements(theImage: UIImage(named: "macron")!, theName: "MACRON", theDetails: "French macarons are delicate sandwich cookies with a crisp exterior. Each individual cookie is known as a macaron shell. The shells are made without any chemical leaveners and get all of their lift from properly beaten egg whites. If you follow the recipe carefully, the cookies have a unique nougat-like, chewy texture. They should not be hollow. You can flavor macarons many ways, but this recipe is for plain macarons. They taste like sweet almond– and they’re delicious! You can always have fun with different flavorful fillings such as vanilla buttercream, lemon buttercream, salted caramel, or chocolate ganache.")
//...............................................................................................
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theTableView.delegate = self
        theTableView.dataSource = self
        
        arrayContents.append(berryTart)
        arrayContents.append(chocolate)
        arrayContents.append(fruit)
        arrayContents.append(strawberry)
        arrayContents.append(muffin)
        arrayContents.append(panCake)
        arrayContents.append(macron)
        
    }
//    use segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendTo = segue.destination as! ViewControllerFor2nd
        
        sendTo.theTopic = theTitle
        sendTo.theImage = theRealImage

        sendTo.theDescription = theDescriptions

    }

    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArrayImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = theTableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
// add accessory button
        cell.accessoryType = .disclosureIndicator
// create variable for content
         var Content = cell.defaultContentConfiguration()
// to resize the image
         let sizeOfImage = CGSize(width: 100, height: 100)
// to adjust size of the image
        Content.imageProperties.maximumSize = sizeOfImage
// to add image
        Content.image = arrayContents[indexPath.row].theImage
// to add name
        Content.text = arrayContents[indexPath.row].theName
// to add detailes
        Content.secondaryText = arrayContents[indexPath.row].theDetails
// to determain how much number of line i need
        Content.secondaryTextProperties.numberOfLines = 2
        
        cell.contentConfiguration = Content
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row : \(indexPath.row)")
    
        theTitle = arrayContents[indexPath.row].theName
        theDescriptions = arrayContents[indexPath.row].theDetails
        theRealImage = arrayContents[indexPath.row].theImage
               
        performSegue(withIdentifier: "goToNext", sender: self)
       
    }

}
