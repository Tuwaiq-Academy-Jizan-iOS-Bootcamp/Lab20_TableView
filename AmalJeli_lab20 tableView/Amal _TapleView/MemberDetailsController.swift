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
//        عشان احل الاوبشنال اكتب
//        if let واضيف متغير جديد نقوله اذا موجوده اطبعها لنا واذا مو موجوده خلها فاضيه
//        if let contact: selectContact
        nameTitleLabel.text = contact?.title
        subTitleLabel.text = contact?.subtitle
        memberImageView.image = UIImage(named: contact?.imagee ?? "")
    }
}
