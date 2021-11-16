//
//  ViewController.swift
//  Lab 20
//
//  Created by زهور حسين on 08/04/1443 AH.
//

import UIKit
//import XCTest
// struct Poets {
//    var image: String
 //   var title: String
   // var subtitle: String
  //  func describe(){
        
  //  }
//}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var arrayprince: [[Poets]] = [[Poets(image: "Picture1", title: "badr bin eabdalmuhsin", subtitle: "alamir badr bin eabd almuhsin bin eabdialeaziz al sueud shaeir maeruf ealy alsaahih alsaeudih walearabiah wulid fi sinih 1949 man ahum aiemaluh wamad warisaluh min badwi."),Poets(image: "Picture2", title: "ghazi alqusaybiu", subtitle: "ghazi bin eabdalrahmin alqusaybiu shaeir wadib wasafir dublumasiun wawazir sueudiun wulid fi 1940 ahum aiemaluh fi dhukri nabil want alriyad")],[Poets(image: "Picture3", title: "eabdalrahman bin musaeid", subtitle: "eabdalrahman bin musaeid bin eabdialeaziz al sueud shaeir sueudiun warayiys nadi alhilal alsueudiu wulid fi 1967 ahum aiemaluh albirwaz wamasa' alkhayr"),Poets(image: "Picture4", title: "musaeid alrashidiu", subtitle: "musaeid bin rabie alkhiarii alrashidiu shaeir nabtiun sueudiun wadabit birutbat eamid wulid fi 1962 ahum aiemaluh diwan sawtiun masmue bieunwan marahish")],[Poets(image: "Picture5", title: "khalid Alfaysal", subtitle: "alamir khalid bin faysal bin eabdialeaziz al sueud saeir wamustashar almalik salman bin eabdialeaziz wayiys allajnah almarkazih lilhaji wulid fi 1940 ahum aiemaluh alfaysal almalik alansan")]]
    var selectprince:Poets?
    var arraypicture = ["1949 & 1940","1967 & 1962","1940"]
   // var Content = ""
   // var Picture = UIImage()
    //var description1 = ""
  //  let namearray = ["badr bin eabdalmuhsin","ghazi alqusaybiu","eabdalrahman bin musaeid","musaeid alrashidiu","khalid Alfaysal"]
//var subtitlearray = ["alamir badr bin eabd almuhsin bin eabdialeaziz al sueud shaeir maeruf ealy alsaahih alsaeudih walearabiah wulid fi sinih 1949 man ahum aiemaluh wamad warisaluh min badwi.","ghazi bin eabdalrahmin alqusaybiu shaeir wadib wasafir dublumasiun wawazir sueudiun wulid fi 1940 ahum aiemaluh fi dhukri nabil want alriyad","eabdalrahman bin musaeid bin eabdialeaziz al sueud shaeir sueudiun warayiys nadi alhilal alsueudiu wulid fi 1967 ahum aiemaluh albirwaz wamasa' alkhayr","musaeid bin rabie alkhiarii alrashidiu shaeir nabtiun sueudiun wadabit birutbat eamid wulid fi 1962 ahum aiemaluh diwan sawtiun masmue bieunwan marahish","alamir khalid bin faysal bin eabdialeaziz al sueud saeir wamustashar almalik salman bin eabdialeaziz wayiys allajnah almarkazih lilhaji wulid fi 1940 ahum aiemaluh alfaysal almalik alansan"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
      //  arrayprince.append(Poets.init(image:UIImage(named: "arraypicture")! , title: "namearray", subtitle: "subtitlearray"))
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Send = segue.destination as! viewcontrollerTV
       /*( Send.textForlable = Content
        Send.image1 = Picture
        Send.descriptionForLable = description1*/
        Send.selectprince = selectprince
    }
}
extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      // return arrayprince.count
    return arrayprince[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arraypicture.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     //   let Data = namearray[indexPath.section][indexPath.row].title
        var content = cell.defaultContentConfiguration()
       
        let size = CGSize(width: 90, height: 90)
        content.imageProperties.maximumSize = size
        content.text = arrayprince[indexPath.section][indexPath.row].title
        content.secondaryText = arrayprince[indexPath.section][indexPath.row].subtitle
        content.secondaryTextProperties.numberOfLines = 2
        content.image = UIImage(named: arrayprince[indexPath.section][indexPath.row].image)
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration = content
      // cell.tableView.text = Data
        return cell
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
         //   Content = arrayprince[indexPath.section][indexPath.row]
        //    Picture = UIImage(named: arrayprince[indexPath.section][indexPath.row]).!
    //        description1 = arrayprince[indexPath.section][indexPath.row]
            selectprince = arrayprince[indexPath.section][indexPath.row]
            performSegue(withIdentifier: "segue", sender: self)
        }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arraypicture[section]
        //return self.sectionarray[section]
    }
    
 //   func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
       // return "My last "
        
func tableView(_tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView(frame: CGRect(x: 0, y: 0, width:
    UIScreen.main.bounds.width, height: 40))
    view.backgroundColor = .systemBrown
    let label = UILabel(frame: CGRect(x: 10, y: 0, width:
        UIScreen.main.bounds.width, height: 40))
    label.text = arraypicture[section]
    label.textColor = .white
    label.textAlignment = .center
    view.addSubview(label)
    return view
}
}

