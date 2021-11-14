//
//  ViewController.swift
//  lab20
//
//  Created by NoON .. on 08/04/1443 AH.
//

import UIKit
struct actors{
    var name: String
    var image: UIImage
    var discription: String
    
}
class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var array:[actors] = []
    var actors1 = actors(name: "canYaman", image: UIImage(named: "canYaman")! , discription: "turkish actoress")
    var actors2 = actors(name: "aisha", image: UIImage(named: "aisha")!, discription: "turkish actoress")
    var actors3 = actors(name: "lee min ho", image: UIImage(named: "lee min ho")!, discription: "korean actor")
    var actors4 = actors(name: "song kand", image: UIImage(named: "song kand")!, discription: "korean actor")
    var actors5 = actors(name: "deepika",image: UIImage(named: "deepika")!, discription: "indiah actoress")
    var actors6 = actors(name: "burak", image: UIImage(named: "burak")!, discription: "turkish actoress")
    var actors7 = actors(name: "handa", image: UIImage(named: "handa")!, discription: "turkish actoress")
    var actorName = ""
    var actorImage = UIImage(named: "")
    var discript = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        array.append(actors1)
        array.append(actors2)
        array.append(actors3)
        array.append(actors4)
        array.append(actors5)
        array.append(actors6)
        array.append(actors7)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as! dataViewController
        detailsVC.name = actorName
        detailsVC.discript = discript
        detailsVC.image = actorImage
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        // لاضافة بيانات المصفوفه في label
        content.text = array[indexPath.row].name
        // لاضافة label2
        content.secondaryText = array[indexPath.row].discription
        // لاضافة علامة < accessory"
        cell.accessoryType = .disclosureIndicator
        // لاضافة صور في cell
        content.image =  array[indexPath.row].image
        // size image
       content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        cell.contentConfiguration = content
        return cell
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        actorName = array[indexPath.row].name
        actorImage = array[indexPath.row].image
        discript = array[indexPath.row].discription
        performSegue(withIdentifier: "goTo2", sender: self)
        }
}
