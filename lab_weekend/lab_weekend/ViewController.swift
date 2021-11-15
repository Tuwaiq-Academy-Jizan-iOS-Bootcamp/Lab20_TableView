//
//  ViewController.swift
//  lab_weekend
//
//  Created by dahma alwani on 09/04/1443 AH.
//

import UIKit


struct ContentElement {
    var theImage : String
    var theName : String
    var theDetails : String
}

class ViewController: UIViewController {

    @IBOutlet weak var theTableView: UITableView! {
        didSet {
        theTableView.delegate = self
        theTableView.dataSource = self
    }
    }
    var contentElements:[[ContentElement]] = [[]]
    var sectionTitles = ["Section1","Section2","Section3"]
    var selectedItem:ContentElement?

    var contents = [[ContentElement(theImage: "berryTart", theName: "BERRY TART", theDetails: "Combine the sugar, flour, cinnamon and nutmeg, stir into smashed blueberries Spread mixture evenly into crust, sprinkle with one cup of the remaining whole blueberries Place tart pan on a baking sheet Bake in oven for half hour or until crust is browned and filling is bubbly"),
    
    // .................................................................
   ContentElement(theImage: "chocolate", theName: "CHOCOLATE CAKE", theDetails: "Sift the dry ingredients into a large bowl first to get rid of any hard lumps caused during storage, while getting more air into the mixture. Then add in your wet ingredients. Just keep in mind that the cake batter is VERY thin. Don’t be tempted to add more flour as this is what makes the cake super soft and moist.")],
////.................................................................
   [ContentElement(theImage: "fruit", theName: "FRUIT CAKE", theDetails: "Packed with fruit and nuts, each slice should look like a colorful mosaic. The pumpkin pie spice-kissed batter is really just there to hold the spiked fruits together—all seven cups of 'em! Fruit cake can be eaten fresh, but also gets better with age, so plan ahead. To age a fruit cake: After the baked loaves have cooled, wrap them in a layer of cheesecloth that has been soaked in a liquor such as whiskey or brandy and place in an airtight container in a cool, dry spot in your house. Let the cakes age for six weeks, drizzling lightly with alcohol every week or two (or when the cheesecloth appears dry). After the fruit cakes age, they are ready for optimal eating and gifting"),
////..................................................................
ContentElement(theImage: "strawberry", theName: "STRAWBERRY CAKE", theDetails: "Preheat oven and prepare cake pans.Sift cake flour and whisk dry ingredients.In an electric mixer cream butter and sugar Mix in eggs and yolks separately then blend in vanilla. Blend in flour mixture alternating with additions of milk. Divide among cake pans and bake until set. Let cool then fresh with strawberry cream cheese whipped cream.")],
////.................................................................
    [ContentElement(theImage:"muffin", theName: "MUFFIN", theDetails:"The muffin batter starts with basic dry ingredients like flour, baking powder + soda, and salt. More often than not, I add ground cinnamon. The only time I don’t add it is when we’re preparing a citrus-y flavored muffin. The wet ingredients are just as simple. Creamed butter and sugar, plus 2 eggs, vanilla, sour cream/plain yogurt, and milk. That’s it. Based on the flavor of the muffin, I use brown sugar or granulated sugar. I use either plain Greek yogurt or sour cream based on what I have. Same with milk– whole milk, 1% milk, buttermilk, almond milk– honestly, it all works in this master muffin recipe."),
////.................................................................
     ContentElement(theImage:"panCake", theName: "PANCAKE", theDetails:"Use a 1/4 cup measuring cup to pour your batter so you get perfect, evenly sized pancakes. Start pouring from the middle, then continue pouring slowly in a circular motion so that the batter spreads into perfect round shapes. Allow the pancakes to cook properly! Don’t rush them on high heat, or flip them too early. Let that under-side cook to a beautiful golden brown colour, and when bubbles start forming on top and around the surface (batter side), they are ready to flip."),
////...................................................................
ContentElement(theImage:"macron", theName: "MACRON", theDetails: "French macarons are delicate sandwich cookies with a crisp exterior. Each individual cookie is known as a macaron shell. The shells are made without any chemical leaveners and get all of their lift from properly beaten egg whites. If you follow the recipe carefully, the cookies have a unique nougat-like, chewy texture. They should not be hollow. You can flavor macarons many ways, but this recipe is for plain macarons. They taste like sweet almond– and they’re delicious! You can always have fun with different flavorful fillings such as vanilla buttercream, lemon buttercream, salted caramel, or chocolate ganache.")]]
////...............................................................................................
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        arrayContents.append(berryTart)
//        arrayContents.append(chocolate)
//        arrayContents.append(fruit)
//        arrayContents.append(strawberry)
//        arrayContents.append(muffin)
//        arrayContents.append(panCake)
//        arrayContents.append(macron)
//        arrayContents =  [[berryTart,chocolate], [fruit,strawberry], [muffin,panCake,macron]]
    }

//    use segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendTo = segue.destination as! ViewControllerFor2nd
        sendTo.selectedItem = selectedItem
     
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentElements[section].count

    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == sectionTitles.count - 1{
            return "this is the footer"
        }else {
            return ""
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
        view.backgroundColor = .systemPink
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 40))
        label.text = sectionTitles[section]
        label.textColor = .white
//        label.textAlignment = .center
        view.addSubview(label)
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = theTableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)

// create variable for content
         var Content = cell.defaultContentConfiguration()
//
// to resize the image
         let sizeOfImage = CGSize(width: 100, height: 100)
// to adjust size of the image
        Content.imageProperties.maximumSize = sizeOfImage
// to add image
        Content.image = UIImage(named: contentElements[indexPath.section][indexPath.row].theImage)

        let image = UIImage(named: contentElements[indexPath.section][indexPath.row].theImage)
// to add name
        Content.text = contentElements[indexPath.section][indexPath.row].theName

// to add detailes
        Content.secondaryText = contentElements[indexPath.section][indexPath.row].theDetails

// to determain how much number of line i need
            Content.secondaryTextProperties.numberOfLines = 2
            
        // add accessory button
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration = Content
       return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        selectedItem = contentElements[indexPath.section][indexPath.row]
        performSegue(withIdentifier: "goToNext", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
   
}

