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
    var titleArray = ""
    
    var dodge = Car(imageCar: UIImage(named: "charger_Srt")!, nemeCar: "charger", colorCar: "red", idNumberCar: "2020ssss121")
    
    var viper = Car(imageCar: UIImage(named: "viper")!, nemeCar: "viper", colorCar: "white", idNumberCar: "2018vvva1223")
    
    var corvete = Car(imageCar: UIImage(named: "c8")!, nemeCar: "corveteC8", colorCar: "orange", idNumberCar: "2020cc1219")
    
    var challenger = Car(imageCar: UIImage(named: "Challenger_Srt")!, nemeCar: "Challenger_Srt", colorCar: "red", idNumberCar: "2020fhdhf")
    
    var comaro = Car(imageCar: UIImage(named: "comarozl1")!, nemeCar: "comarozl1", colorCar: "black", idNumberCar: "20201ofkfl")
    
var myarray = ["charger_Srt","Challenger_Srt","comarozl1","viper","c8"]
    
    @IBOutlet weak var myTableViewinVc: UITableView!
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableViewinVc.delegate = self
        myTableViewinVc.dataSource = self
        
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let rootVC = segue.destination as! ViewControllerTwo
        rootVC.recivedData = titleArray
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return myarray.count
        //end func count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewConect
        //var content = cell.defaultContentConfiguration()
        let myarray = myarray[indexPath.row]
        
        cell.labelNameCar.text = myarray
        
//        cell.imageViewInCell.image = UIImage(named: myarray)
        
        
        if cell.labelNameCar.text == "charger_Srt" {
            
            cell.labelColerName.text = dodge.colorCar
            cell.imageViewInCell.image = dodge.imageCar
            cell.labelIdnumber.text = dodge.idNumberCar
            
        }else if cell.labelNameCar.text == "Challenger_Srt"{
            
            cell.labelColerName.text = challenger.colorCar
            cell.imageViewInCell.image = challenger.imageCar
            cell.labelIdnumber.text = challenger.idNumberCar
            
        }else if cell.labelNameCar.text == "comarozl1"{
            
            cell.labelColerName.text = comaro.colorCar
            cell.imageViewInCell.image = comaro.imageCar
            cell.labelIdnumber.text = comaro.idNumberCar
            
        }else if cell.labelNameCar.text == "viper"{
            cell.labelColerName.text = viper.colorCar
            cell.imageViewInCell.image = viper.imageCar
            cell.labelIdnumber.text = viper.idNumberCar
        }else{
            cell.labelColerName.text = corvete.colorCar
            cell.imageViewInCell.image = corvete.imageCar
            cell.labelIdnumber.text = corvete.idNumberCar
            
            
        }
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        titleArray = myarray[indexPath.row]
        performSegue(withIdentifier: "goToViewControler", sender: self)
    }
    
}

