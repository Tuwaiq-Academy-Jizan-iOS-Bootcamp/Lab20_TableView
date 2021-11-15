//
//  ViewControllerDataEntry.swift
//  viewCell
//
//  Created by Abdulrhman Abuhyyh on 08/04/1443 AH.
//

import UIKit

class ViewControllerDataEntry: UIViewController {

    @IBOutlet weak var imageDevice: UIImageView!
    @IBOutlet weak var textViewDevice: UITextView!
    @IBOutlet weak var nameDeviceTitle: UILabel!
    
    var theNameOfDevice = ""
    var theImageOfDevice = UIImage(named: "")
    var theDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameDeviceTitle.text = theNameOfDevice
        textViewDevice.text = theDisc
        imageDevice.image = theImageOfDevice

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       }

}
