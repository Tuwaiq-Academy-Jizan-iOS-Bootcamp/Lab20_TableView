//
//  FamilyViewController.swift
//  Amal _TapleView
//
//  Created by Amal Jeli on 07/04/1443 AH.
//

import UIKit

class FamilyViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var contacts: [Contact] = [
        Contact(image: "MyFather", title: "MyFather", subtitle: "My father's name Omar He is 88 years old business man works He likes to eat meat every day , and he always likes to listen to Yemeni songs 💙"),
        Contact(image: "MyMother", title: "MyMother", subtitle: "My mother’s name Dola She is 52 years old The best teacher in the world, the best and beautiful mama ,I don't think she loves anything else more than her love for us💙."),
        Contact(image: "Abdualrhman", title: "Abdualrhman", subtitle: "My brother’s name Abdurahman He is 25 years old He will be an engineer in a month from now My best friend, he always motivates me, and has a very beautiful voice💙."),
        Contact(image: "Ahmed", title: "Ahmed", subtitle: "My brother’s name Ahmed He is 23 years old great soldier , Protects and defends the homeland Now he works and studies nursing online. I always wish him good luck 💙."),
        Contact(image: "Elham", title: "Elham", subtitle: "My sister’s name Elham  ,She is 17 years old ,She have the best heart in the world, She is funny sister ,she loves children 👶🏽 ,Turkish series And tiktok 💙. "),
        Contact(image: "Fatima", title: "Fatima", subtitle: "My little sister’s Fatima She is 16 years old , A big fan of BTS She loves design 👗 , dancing and walking 🏃🏻‍♀️ and her dream is to become a doctor 👩🏻‍⚕️. "),
        Contact(image: "Mycats", title: "Mycats", subtitle: "We have 3 cats , 1 male and 2 female ,My name’s Cats 🐱 Mila , saed , saeda,my father give them names for cats, We love them so much, They are so cute and make us happy at home 🥳💛💛 ."),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "memberCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? MemberDetailsController
        let selectedContact = sender as? Contact
        viewController?.contact = selectedContact
    }
}

extension FamilyViewController: UITableViewDelegate, UITableViewDataSource {
    
   func numberOfSections(in tableView: UITableView) -> Int {
       contacts.count
   }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        var content = cell.defaultContentConfiguration()
        content.imageProperties.maximumSize = CGSize(width: 40, height: 40)
//        content.imageProperties.cornerRadius = 8
        content.image = UIImage(named: contacts[indexPath.section].image)
        
        content.text = contacts[indexPath.section].title
        content.secondaryText = contacts[indexPath.section].subtitle
        content.secondaryTextProperties.numberOfLines = 0
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "details", sender: contacts[indexPath.section])
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "I love u My Family👨‍👩‍👦‍👦"
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "My Beautiful Family 👨‍👩‍👧‍👧"
    }
}
