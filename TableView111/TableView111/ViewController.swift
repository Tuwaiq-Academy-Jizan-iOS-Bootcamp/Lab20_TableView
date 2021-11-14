//
//  ViewController.swift
//  TableView111
//
//  Created by موسى مسملي on 12/11/2021.
//

import UIKit

struct club {
    var name : String
    var image : UIImage
    var Descreption : String
    
}

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var arrayOfClub :[club] = []
    var club1 = club (name: "Chelsea", image: UIImage(named: "Chelsea")!, Descreption: "Premier League")
    var club2 = club (name:"liverpool" , image: UIImage(named: "liverpool")!, Descreption: "Premier League")
    var club3 = club (name:"Manchester city" , image: UIImage(named: "Manchester city")!, Descreption: "Premier League")
    var club4 = club (name:"Manchester United" , image: UIImage(named: "Manchester United")!, Descreption: "Premier League")
    var club5 = club (name:"Newcasile United" , image: UIImage(named: "Newcasile United")!, Descreption: "Premier League")
    
    
    var nameContent = ""
    var DescriptionContent = ""
    var imageContent = UIImage(named: "")
    
    
    
 //   var arrayOfMyImages = ["Chelsea","liverpool","Manchester city","Manchester United","Newcasile United"]
  //  var sendDateTo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        
        arrayOfClub.append (club1)
        arrayOfClub.append (club2)
        arrayOfClub.append (club3)
        arrayOfClub.append (club4)
        arrayOfClub.append (club5)
        
       
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let descreptionVS = segue.destination as! HomeViewController1
        descreptionVS.namelab = nameContent
        descreptionVS.labimage = imageContent
        descreptionVS.DescreptionC = DescriptionContent
        
        
      // let sendDateToOtherView = segue.destination as? HomeViewController1
        
  //     sendDateToOtherView?.nameOfTheCollector = sendDateTo
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfClub.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     
       let size = CGSize(width: 50, height: 50)
        arrayOfClub [indexPath.row].image.preparingThumbnail(of: size)
        
        var content = cell.defaultContentConfiguration()
        content.imageProperties.maximumSize = size
        content.image = arrayOfClub[indexPath.row].image
        content.text = arrayOfClub [indexPath.row].name
        content.secondaryText = arrayOfClub [indexPath.row].Descreption
        content.secondaryTextProperties.numberOfLines = 2
        cell.contentConfiguration = content
        return cell
        
    }

      func tableview(_tableView:UITableView,didSelectRowAT indeexpath:IndexPath) {

          nameContent = arrayOfClub[indeexpath.row].name
          imageContent = arrayOfClub[indeexpath.row].image
          DescriptionContent = arrayOfClub[indeexpath.row].Descreption
          
          performSegue(withIdentifier: "class", sender: self)
      
      }
}

