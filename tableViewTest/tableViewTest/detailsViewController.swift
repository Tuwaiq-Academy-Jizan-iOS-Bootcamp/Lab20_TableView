//
//  detailsViewController.swift
//  tableViewTest
//
//  Created by يوسف جابر المالكي on 06/04/1443 AH.
//

import UIKit

class detailsViewController: UIViewController {

    
    
    @IBOutlet weak var lableTableView: UILabel!
    var textForLable = ""
    
    @IBOutlet weak var imageForTable: UIImageView!
    var imageFoeCell = ""
    
    @IBOutlet weak var descripLable: UILabel!
    var descripeForLable = ""
    
    override func viewDidLoad() {
        
        lableTableView.text = textForLable
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
