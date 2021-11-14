//
//  ViewController.swift
//  EhabHakami_TableViewHomeWork
//
//  Created by Ehab Hakami on 06/04/1443 AH.
//

import UIKit

class Car{
    var imageCar:UIImage
    var nemeCar:String
    var colorCar:String
    var idNumberCar:String
    
    
    init(imageCar:UIImage ,nemeCar:String, colorCar:String ,idNumberCar:String){
    
    self.colorCar = colorCar
    self.nemeCar = nemeCar
    self.imageCar = imageCar
    self.idNumberCar = idNumberCar
    }
    
    
}

class ViewController: UIViewController {
    var nameCC = ""
    
    var imageCC = UIImage(named: "")
    
    var colorCC = ""
    
    var dodge = Car(imageCar: UIImage(named: "charger_Srt")!, nemeCar: "charger", colorCar: "red", idNumberCar: "musleCar")
    
    var viper = Car(imageCar: UIImage(named: "viper")!, nemeCar: "viper", colorCar: "white", idNumberCar: "superCar")
    
    var corvete = Car(imageCar: UIImage(named: "c8")!, nemeCar: "corveteC8", colorCar: "orange", idNumberCar: "superCar")
    
    var challenger = Car(imageCar: UIImage(named: "Challenger_Srt")!, nemeCar: "Challenger_Srt", colorCar: "red", idNumberCar: "musleCar")
    
    var comaro = Car(imageCar: UIImage(named: "comarozl1")!, nemeCar: "comarozl1", colorCar: "black", idNumberCar: "musleCar")
    
    var myarray:[Car] = []
    var myarrayTwo:[Car] = []
    var myarrayTree:[[Car]] = []
    
    @IBOutlet weak var myTableViewinVc: UITableView!
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableViewinVc.delegate = self
        myTableViewinVc.dataSource = self
        
        
        // في الابند نقلنا البيانات الي في الكلاس حطيناها في الاراي بعد م عرفناها في متغير
        myarray.append(dodge)
        myarray.append(challenger)
        myarray.append(comaro)
        myarray.append(corvete)
        myarray.append(viper)

        
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
       return myarray.count
        //end func count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // add cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        
        var content = cell.defaultContentConfiguration()
        
        cell.accessoryType = .disclosureIndicator // button
        
        
        content.text = myarray[indexPath.row].nemeCar
        
        content.secondaryText = myarray[indexPath.row].colorCar
        
        /////
        
        let sizeImage = CGSize(width: 70, height: 70)// size image
        
        content.image = myarray[indexPath.row].imageCar.preparingThumbnail(of: sizeImage)
        content.imageProperties.maximumSize = sizeImage
        content.image = myarray[indexPath.row].imageCar
        
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
        nameCC = myarray[indexPath.row].nemeCar
        imageCC = myarray[indexPath.row].imageCar
        colorCC = myarray[indexPath.row].idNumberCar
        performSegue(withIdentifier: "goToViewControler", sender: self)
    }
    // حق الطباعة في الصفحة الثانية عرفنا المتغيرت وعطيناها القيم الي في الكلاس والاراي اضفناها ب الابيند
}

