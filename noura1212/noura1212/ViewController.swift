//
//  ViewController.swift
//  noura1212
//
//  Created by NoON .. on 07/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayName = ["lee min ho","aisha","burak","deepika","can yaman","handa","song kand","KimSeon","hwang in-yeop"]
    var data = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            let sendData = segue.destination as! dataViewController
        sendData.name = data
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.cellImage.image = UIImage(named: arrayName[indexPath.row])
        cell.labelName.text = arrayName[indexPath.row]
        cell.labelDescription.text = "Occupation"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         data = arrayName[indexPath.row]
        performSegue(withIdentifier: "goTo2", sender: self)
        }
    }
