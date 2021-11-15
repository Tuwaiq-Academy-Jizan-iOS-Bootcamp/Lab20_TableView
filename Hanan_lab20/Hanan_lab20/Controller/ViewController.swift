//
//  ViewController.swift
//  Hanan_lab20
//
//  Created by Hanan Somily on 13/11/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var desplayDataTableView: UITableView! {
    didSet{
        desplayDataTableView.dataSource = self
        desplayDataTableView.delegate = self
    }
    }
    var jeepCar:[[Jeep]]=[[],[],[]]
  
       //var a:Jeep = Jeep()
//       var name = ""
//       var imageCar = UIImage()
//       var detilsCar = ""
    var selectCar:Jeep?
    var sections = ["WRANGLER","4X4","GRAND CHEROKEE"]
       override func viewDidLoad() {
           super.viewDidLoad()
        
           // Do any additional setup after loading the view.
         
           //jeepCar.append(Jeep.init
           let sport = Jeep(title: " WRANGLER SPORT® ", photo: UIImage(named:"sport")!,description:"The All-New Jeep® Wrangler Sport is for those who want nothing to get in the way of their adventure. It features the Trail Rated® designation, signaling its ability to take on tough trails with confidence. It’s authentic to the core and is ideal for those who are looking to customize and make it truly their own. ")
           let sahara = Jeep(title: "WRANGLER SAHARA®", photo: UIImage(named: "sahara")!,description: "The All-New Jeep® Wrangler Sahara has been designed to deliver a premium off-road and urban experience, with superior materials and craftsmanship throughout. Inspired by Wrangler heritage, the Sahara features a refined cabin with cutting edge technology, innovative storage and exceptional comfort. On the exterior, its iconic look is accentuated with body-color fender flares and body-color hardtop. ")
           let rubicon = Jeep(title: "WRANGLER RUBICON® ", photo: UIImage(named: "rubicon")!,description: "The All-New Jeep® Wrangler Rubicon is off-road ready. With rugged 32-inch mud & snow tires, a 77.2:1 crawl ratio and easily accessible switches for engaging 4x4 capabilities, the Rubicon is tailor-made for all kinds of boundary-breaking experiences.")
           let longitude = Jeep(title: "LONGITUDE ®", photo: UIImage(named: "Longitude")!,description: "Get enveloped in premium design combined with maximum comfort in the Compass Longitude 4x4. A leather-wrapped steering wheel and first-class seating top off a user-friendly interior that features sculptural elements, sophisticated materials and precise technical details.")
           let limited = Jeep(title: "LIMITED ®", photo: UIImage(named: "limited")!,description: " Refinement and style fuse to create an intriguing new entry in the Compact SUV segment. The Compass Limited features premium cloth/leather front seats, 18-inch aluminum wheels, a two-tone black roof, panoramic sunroof and many other enhancements. ")
           let trailhawk = Jeep(title: "TRAILHAWK ®", photo: UIImage(named: "Trailhawk")!,description: "Refinement and style fuse to create an intriguing new entry in the Compact SUV segment. The Jeep® Compass Trailhawk® features Leather and Cloth Front and Rear seats,7 Full Color Configurable Instrument Cluster and Radio Display with Uconnect™, LED Signature Headlamps and many other enhancements.")
           let laredo = Jeep(title: " GRAND CHEROKEE LAREDO® ", photo: UIImage(named: "Laredo")!,description: "Jeep® Grand Cherokee Laredo has all the capability and style that makes the Jeep® Brand unique. Jeep® Grand Cherokee Laredo comes standard with 3.6L engine 8-Speed Automatic Transmission, Bi Xenon HID Headlamps, and Keyless Enter-N-Go™.")
           let trailhawk1 = Jeep(title: "GRAND CHEROKEE TRAILHAWK®", photo: UIImage(named: "Trailhawk1")!,description: "The new Jeep® Grand Cherokee Trailhawk® provides the right balance between an off-road dominance and premium details. ")
           let summit = Jeep(title: "GRAND CHEROKEE SUMMIT® ", photo: UIImage(named: "summit")!,description: "Imagine having to handle the most challenging driving conditions without leaving behind comfort,style and premiumness. In 2020, this will be possible thanks to the Jeep® Grand Cherokee Summit with new levels of exclusivity and craftsmanship.")
           let srt = Jeep(title: "GRAND CHEROKEE SRT® ", photo: UIImage(named: "srt")!,description: "Jeep® Grand Cherokee SRT® boasts track-ready capability and first-rate features making it the sportiest and most powerful Jeep® Grand Cherokee ever. 6.4L HEMI® V8 Engine")
           jeepCar = [[sport,sahara,rubicon],[longitude,limited,trailhawk],[laredo,trailhawk1,summit,srt]]

       }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let detil = segue.destination as! DisplayViewController2
            detil.car = selectCar
//            detil.nameOfCar = name
//            detil.detils = detilsCar
//            detil.imageOfCar = imageCar
                }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return jeepCar.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      //  var a = jeepCar[section].count
        return  jeepCar[section].count
    }
 
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath as IndexPath)
        var content = cell.defaultContentConfiguration()

        content.text = jeepCar[indexPath.section][indexPath.row].title
        content.secondaryText = jeepCar[indexPath.section][indexPath.row].description
        content.secondaryTextProperties.numberOfLines = 2
        let sizeImage = CGSize(width: 50, height: 50)
        content.imageProperties.maximumSize = sizeImage
        content.image = jeepCar[indexPath.section][indexPath.row].photo
        //or§
        //content.image = jeepCar[indexPath.row].photo.preparingThumbnail(of: sizeImage)

        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
            
            return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectCar = jeepCar[indexPath.section][indexPath.row]
//        name = save.title
//        imageCar = save.photo
//        detilsCar = save.description
        performSegue(withIdentifier: "sender", sender: self)
        desplayDataTableView.deselectRow(at: indexPath, animated: true)
        }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let textHeader = sections[section]
      
       // textHeader = color.red
        return textHeader
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 55))
        view.backgroundColor = .systemGray
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 35))
        label.text = sections[section]
        label.textAlignment = .center
        label.textColor = .white
        view.addSubview(label)
        return view
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == jeepCar.count - 1{
            return "... End ... "
        }else {
            return ""
        }
    }
}

