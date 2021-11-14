//  tableView
//
//  Created by Nasser Aseeri on 09/04/1443 AH.
//

import UIKit

struct Contacts {
    var image: UIImage
    var name: String
    var details: String
}

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    
    
    var arrynasser = ["","","", ""]
    var titleContent = ""
    var descriptionText = ""
    var defaultImage = UIImage(named: "")
    var arrayOfContact: [Contacts] = []
    
    var apple = Contacts(image: UIImage(named: "apple")!,
                             name: "تفاح",
                             details: " تناول تفاحة واحدة سوف يزودك ببعض المعادن التي تعزز عملية الأيض الصحية، حيث يعمل المغنيسيوم على تحويل الكربوهيدرات")
    var enap = Contacts(image: UIImage(named: "enab")!,
                        name: "عنب", details: "lalalalalalalalalalalalalalalalalalallalalalalalalal")
    var frawlah = Contacts(image: UIImage(named: "frawlah")!,
                             name: "فراوله",
                             details: "lalalalalalalalalalalalalallalallalalalala")
    var habhab = Contacts(image: UIImage(named: "habhab")!,
                             name: "حبحب",
                             details: "lalalalalalalalalalalalalalalalalala")
    var loz = Contacts(image: UIImage(named: "apple")!,
                             name: "تفاح",
                             details: "lalalalalallalalalalalalalalalalalalalala")
    var kewi = Contacts(image: UIImage(named: "kewi")!,
                             name: "كيوي",
                             details: "lalalalalalalalalalalalalalalalalalal")
    var mang = Contacts(image: UIImage(named: "mang")!,
                             name: "مانجو",
                             details: "lalalalalalalalalalalalalalalal")
    var orang = Contacts(image: UIImage(named: "orang")!,
                         name: "برتقال",
                         details: "lalalalalalalalalalalalalalalalala")
    
    
    
    
    override func viewDidLoad() {
        
        
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        arrayOfContact.append(enap)
        arrayOfContact.append(frawlah)
        arrayOfContact.append(habhab)
        arrayOfContact.append(loz)
        arrayOfContact.append(kewi)
        arrayOfContact.append(mang)
        arrayOfContact.append(orang)
        
        //==========================
        
        _ = ["","","", ""]
        _ = ""
        _ = ""
        _ = UIImage(named: "")
        var _: [Contacts] = []
      
        
     
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as! DetailsViewController
        
        detailsVC.textForLabel = titleContent
        detailsVC.descriptionForLabel = descriptionText
        detailsVC.imageForImageView = defaultImage!
   
    }

    
}





extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfContact.count
        
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.accessoryType = .disclosureIndicator

        var content = cell.defaultContentConfiguration()
        
        let targetSize = CGSize(width: 50, height: 50)
        content.imageProperties.maximumSize = targetSize
        content.image = arrayOfContact[indexPath.row].image
        
        content.text = arrayOfContact[indexPath.row].name
        
        content.secondaryText = arrayOfContact[indexPath.row].details
        content.secondaryTextProperties.numberOfLines = 2

        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row : \(indexPath.row)")
        
        titleContent = arrayOfContact[indexPath.row].name
        defaultImage = arrayOfContact[indexPath.row].image
        descriptionText = arrayOfContact[indexPath.row].details
        
        performSegue(withIdentifier: "segDetailsView", sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "my frut"
    }
    
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "end my fruts"
        
    }
    private func tableView(_ tableView: UITableView, cell2ForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell2.accessoryType = .disclosureIndicator

        var content = cell2.defaultContentConfiguration()
        
        let targetSize = CGSize(width: 50, height: 50)
        content.imageProperties.maximumSize = targetSize
        content.image = arrayOfContact[indexPath.row].image
        
        content.text = arrayOfContact[indexPath.row].name
        
        content.secondaryText = arrayOfContact[indexPath.row].details
        content.secondaryTextProperties.numberOfLines = 2

        cell2.contentConfiguration = content
        
        return cell2
    }
    

    }
    



