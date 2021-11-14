//
//  MemberDetailsController.swift
//  Amal _TapleView
//
//  Created by Amal Jeli on 07/04/1443 AH.
//

import UIKit

class MemberDetailsController: UIViewController {
    
    @IBOutlet weak var nameTitleLabel: UILabel!
    @IBOutlet weak var memberImageView: UIImageView!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var contact: Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTitleLabel.text = contact?.title
        subTitleLabel.text = contact?.subtitle
        memberImageView.image = UIImage(named: contact?.image ?? "")
    }
}
