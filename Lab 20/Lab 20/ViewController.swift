//
//  ViewController.swift
//  Lab 20
//
//  Created by زهور حسين on 08/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arraypicture = ["Picture1","Picture2","Picture3","Picture4","Picture5"]
    var Content = ""
    var Picture = UIImage()
    var description1 = ""
    var namearray = ["badr bin eabdalmuhsin","ghazi alqusaybiu","eabdalrahman bin musaeid","musaeid alrashidiu","khalid Alfaysal"]
var subtitlearray = ["alamir badr bin eabd almuhsin bin eabdialeaziz al sueud shaeir maeruf ealy alsaahih alsaeudih walearabiah wulid fi sinih 1949 man ahum aiemaluh wamad warisaluh min badwi.","ghazi bin eabdalrahmin alqusaybiu shaeir wadib wasafir dublumasiun wawazir sueudiun wulid fi 1940 ahum aiemaluh fi dhukri nabil want alriyad","eabdalrahman bin musaeid bin eabdialeaziz al sueud shaeir sueudiun warayiys nadi alhilal alsueudiu wulid fi 1967 ahum aiemaluh albirwaz wamasa' alkhayr","musaeid bin rabie alkhiarii alrashidiu shaeir nabtiun sueudiun wadabit birutbat eamid wulid fi 1962 ahum aiemaluh diwan sawtiun masmue bieunwan marahish","alamir khalid bin faysal bin eabdialeaziz al sueud saeir wamustashar almalik salman bin eabdialeaziz wayiys allajnah almarkazih lilhaji wulid fi 1940 ahum aiemaluh alfaysal almalik alansan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Send = segue.destination as! viewcontrollerTV
        Send.textForlable = Content
        Send.image1 = Picture
        Send.descriptionForLable = description1
        
    }

}
extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraypicture.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let size = CGSize(width: 90, height: 90)
        content.imageProperties.maximumSize = size
        content.text = namearray[indexPath.row]
        content.secondaryText = subtitlearray[indexPath.row]
        content.secondaryTextProperties.numberOfLines = 2
        content.image = UIImage(named: arraypicture[indexPath.row])
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration = content
        
        return cell
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            Content = namearray[indexPath.row]
            Picture = UIImage(named: arraypicture[indexPath.row])!
            description1 = subtitlearray[indexPath.row]
            performSegue(withIdentifier: "segue", sender: self)
        }
}
