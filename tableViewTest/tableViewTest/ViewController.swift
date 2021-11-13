//
//  ViewController.swift
//  tableViewTest
//
//  Created by يوسف جابر المالكي on 06/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
// step 1
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    var arrayName = ["YOUSEF", "ALMALKI","1"]
    var arrayImage = ["bell", "setting","bell"]
    
    var images = ""
    var titleContent = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let details = segue.destination as!
        detailsViewController
         details.textForLable = titleContent
         let imagesCell = segue.destination as! detailsViewController
         imagesCell.imageFoeCell = images
         
    }

}

extension ViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        step 2
        var content = cell.defaultContentConfiguration()
        
        
//        step 3
        
        content.text = arrayName[indexPath.row]
        content.image = UIImage.init(systemName: "\([indexPath.row])")
                                   
                                   
//        here edit to array ↑
//        content.text = "Yousef Almalki !"
        
//
        cell.contentConfiguration = content
        
//        step 5
        return cell
    }
//    debug  result
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(" Row : \(indexPath.row)")
        
 
        titleContent = arrayName[indexPath.row]
        images = arrayImage[indexPath.row]
        
        print(arrayName[indexPath.row])
        
        
        performSegue(withIdentifier: "segDetailsView", sender: indexPath)
        
    }
    
    
}
