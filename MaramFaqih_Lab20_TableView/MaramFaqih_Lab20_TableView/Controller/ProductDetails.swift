//
//  ProductDetails.swift
//  MaramFaqih_Lab20_TableView
//
//  Created by meme f on 08/04/1443 AH.
//

import UIKit

class ProductDetails: UIViewController {
    @IBOutlet weak var descriptionLabelForDetails: UILabel!
    @IBOutlet weak var imageForDetails: UIImageView!
    @IBOutlet weak var titleLabelForDetails: UILabel!
    
    var TdescriptionLabelForDetails = ""
    var TimageForDetails = ""
    var TtitleLabelForDetails = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabelForDetails.text = TdescriptionLabelForDetails
        imageForDetails.image = UIImage(named: "\(TimageForDetails)")
        titleLabelForDetails.text = TtitleLabelForDetails
      
        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

