//
//  ViewController.swift
//  EhabHakami_TableViewHomeWork
//
//  Created by Ehab Hakami on 06/04/1443 AH.
//

import UIKit


class Car {
    var imageCar:String
    var nemeCar:String
    var colorCar:String
    var idNumberCar:String
    
    
    init(imageCar:String ,nemeCar:String, colorCar:String ,idNumberCar:String){
    
    self.colorCar = colorCar
    self.nemeCar = nemeCar
    self.imageCar = imageCar
    self.idNumberCar = idNumberCar
    }
    
    
}


class ViewController: UIViewController {
    var nameCC = ""
    
    var imageCC = ""
    
    var colorCC = ""
    
    var dodge = Car(imageCar:"charger_Srt", nemeCar: "charger", colorCar: "red", idNumberCar: "musleCar")
    
    var viper = Car(imageCar: "viper", nemeCar: "viper", colorCar: "white", idNumberCar: "superCar")
    
    var corvete = Car(imageCar: "c8", nemeCar: "corveteC8", colorCar: "orange", idNumberCar: "superCar")
    
    var challenger = Car(imageCar: "Challenger_Srt", nemeCar: "Challenger_Srt", colorCar: "red", idNumberCar: "musleCar")
    
    var comaro = Car(imageCar: "comarozl1", nemeCar: "comarozl1", colorCar: "black", idNumberCar: "musleCar")
    
    
    var comaroSs = Car(imageCar: "comaro2011", nemeCar: "comaross", colorCar: "black", idNumberCar: "musleCar")
    
    
    var ctsV = Car(imageCar: "ctsv", nemeCar: "ctsv", colorCar: "red", idNumberCar: "musleCar")
    
    var caprice = Car(imageCar: "caprice", nemeCar: "caprice", colorCar: "black", idNumberCar: "sedan")
    
    var chavess = Car(imageCar: "chavess", nemeCar: "chavess", colorCar: "red", idNumberCar: "sedan")
    

    
    
    // Carete array
    var myarray = [Car]()
    var myarrayTwo = [Car]()
    var arraytree = [Car]()
   var myarrayInall = [[Car]]()
    
    
    //array name title Sections
    var sectionArray = ["Amurcan Car1","Amurcan Car2","Amurcan Car3"]
    
    @IBOutlet weak var myTableViewinVc: UITableView!
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableViewinVc.delegate = self
        myTableViewinVc.dataSource = self
        
        
        // send data in array
        myarray = [caprice,dodge,challenger]
        
        myarrayTwo = [viper,comaro,ctsV]
        
        arraytree = [corvete,comaroSs,chavess]
        
        myarrayInall = [myarray,myarrayTwo,arraytree]
        
        // في الابند نقلنا البيانات الي في الكلاس حطيناها في الاراي بعد م عرفناها في متغير
//        myarray.append(dodge)
//        myarray.append(challenger)
//        myarray.append(comaro)
//        myarray.append(corvete)
//        myarray.append(viper)

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let rootVC = segue.destination as! ViewControllerTwo
        
        //نقل البيانات للفيو تو
        rootVC.carName = nameCC
        rootVC.imageCar = imageCC
        rootVC.discrabionCar = colorCC
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarrayInall[section].count
        //end func count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // add cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        
        var content = cell.defaultContentConfiguration()
        
        cell.accessoryType = .disclosureIndicator // button
        
        
        content.text = myarrayInall[indexPath.section][indexPath.row].nemeCar
        
        content.secondaryText = myarrayInall[indexPath.section][indexPath.row].colorCar
        
        /////
        
       
       // let sizeImage = CGSize(width: 70, height: 70)// size image
        
        let image = UIImage(named: myarrayInall[indexPath.section][indexPath.row].imageCar)
        content.image = image
        content.image = image
        content.imageProperties.maximumSize = CGSize(width: 60, height: 60)
    
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        
        
//        content.image = myarrayInall[indexPath.section][indexPath.row].imageCar.preparingThumbnail(of: sizeImage)
//        content.imageProperties.maximumSize = sizeImage
//        content.image = myarrayInall[indexPath.section][indexPath.row].imageCar
        
        
//        if indexPath.section ==  2 {
//            dodge.
//        }
        
        
        // end add and edit image
        
        
        cell.contentConfiguration = content // print data in TableView
        
        //cell.labelNameCar.text = myarray
        
//        cell.imageViewInCell.image = UIImage(named: myarray)
        
        
//        if cell.labelNameCar.text == "charger_Srt" {
//
//            cell.labelColerName.text = dodge.colorCar
//            cell.imageViewInCell.image = dodge.imageCar
//            cell.labelIdnumber.text = dodge.idNumberCar
//
//        }else if cell.labelNameCar.text == "Challenger_Srt"{
//
//            cell.labelColerName.text = challenger.colorCar
//            cell.imageViewInCell.image = challenger.imageCar
//            cell.labelIdnumber.text = challenger.idNumberCar
//
//        }else if cell.labelNameCar.text == "comarozl1"{
//
//            cell.labelColerName.text = comaro.colorCar
//            cell.imageViewInCell.image = comaro.imageCar
//            cell.labelIdnumber.text = comaro.idNumberCar
//
//        }else if cell.labelNameCar.text == "viper"{
//            cell.labelColerName.text = viper.colorCar
//            cell.imageViewInCell.image = viper.imageCar
//            cell.labelIdnumber.text = viper.idNumberCar
//        }else{
//            cell.labelColerName.text = corvete.colorCar
//            cell.imageViewInCell.image = corvete.imageCar
//            cell.labelIdnumber.text = corvete.idNumberCar
            
            
        //}
        
        return cell
        
    }// end func TO
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameCC = myarrayInall[indexPath.section][indexPath.row].nemeCar
        imageCC = myarrayInall[indexPath.section][indexPath.row].imageCar
        colorCC = myarrayInall[indexPath.section][indexPath.row].idNumberCar
        performSegue(withIdentifier: "goToViewControler", sender: self)
    }
    
    
    // حق الطباعة في الصفحة الثانية عرفنا المتغيرت وعطيناها القيم الي في الكلاس والاراي اضفناها ب الابيند
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return sectionArray[section]
//    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
           let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
        view.backgroundColor =  UIColor(red: 1, green: 1, blue: 0,alpha: 1)

           let lbl = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width - 15, height: 30))

           lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.text = "\(sectionArray[section])"
           view.addSubview(lbl)
           return view
         }
    
    
    // print power then last Sections
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == sectionArray.count - 1 {
            return "Power"
        }else{
            return ""
        }
    }
    
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//           return 65
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//           return 65
//    }
    
    
    // add 3 Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
}

