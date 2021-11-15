//
//  ViewController.swift
//  homeworkTableView_YasirHakami
//
//  Created by Yasir Hakami on 12/11/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    
    var nameOftilte = ""
    var arrayCar = ["ATOU","chevrolet","coroila","landCroser","maserati2019","mercedes","mercedes69","nismo","Range","supra"]
    var carModel = ["2020","2019","2020","2018","2019","2018","2002","2017","2020","2018"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendData = segue.destination as? ViewControllerForData
        sendData?.reciveData = nameOftilte
        
    }

}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCar.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell") as! Content
        let arrayCar = arrayCar[indexPath.row]

        cell.imagee.image = UIImage(named: arrayCar)
        cell.lbldec.text = arrayCar
        cell.lplname.text = carModel[indexPath.row]

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameOftilte = arrayCar[indexPath.row]
        performSegue(withIdentifier: "ToMyView", sender: self)
    }

}
