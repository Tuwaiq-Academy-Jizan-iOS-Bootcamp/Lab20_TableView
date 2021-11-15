//
//  ViewControllerForData.swift
//  homeworkTableView_YasirHakami
//
//  Created by Yasir Hakami on 12/11/2021.
//

import Foundation
import UIKit

class ViewControllerForData : UIViewController {
    var reciveData = ""
    
    @IBOutlet weak var descrip: UITextView!
    @IBOutlet weak var imageForCar: UIImageView!
    @IBOutlet weak var nameCare: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameCare.text = reciveData
        imageForCar.image = UIImage(named: reciveData)
        
        if nameCare.text == "ATOU" {
            descrip.text = "AUTO1.com is Europe’s largest wholesale platform for used cars."}
        if nameCare.text == "chevrolet" {
            descrip.text = "Vehicles Delivering Stunning Design, Innovative Technology & Impressive Safety Features. Forward Collision Alert. Traction Control System."}
        if nameCare.text == "coroila" {
            descrip.text = "he Toyota Corolla (Toyota Karōra) is a series of subcompact and compact cars manufactured and marketed globally by Toyota."}
        if nameCare.text == "landCroser" {
            descrip.text = "The Toyota Land Cruiser (Hepburn: Toyota Rando-Kurūzā) (also sometimes spelled as LandCruiser) is a series of four-wheel drive vehicles produced by the Japanese automobile manufacturer Toyota."}
        if nameCare.text == "maserati2019" {
            descrip.text = "The 2019 Maserati Ghibli has a Manufacturer's Suggested Retail Price (MSRP) starting just under $75,000, plus a $1,495 destination charge."}
        if nameCare.text == "mercedes" {
            descrip.text = "Mercedes-Benz combines luxury with performance across the full line of models including luxury sedans, SUVs, coupes, roadsters, convertibles & more." }
        if nameCare.text == "mercedes69" {
            descrip.text = "Mercedes-Benz combines luxury with performance across the full line of models including luxury sedans, SUVs, coupes, roadsters, convertibles & more." }
        if nameCare.text == "nismo" {
            descrip.text = "Discover the 2021 Nissan Patrol NISMO legend. Custom-tuned performance luxury sports SUV, built on the racing tracks."}
        if nameCare.text == "Range" {
            descrip.text = "The Range has everyday essentials, including Cleaning, Health and Wellbeing, Food, Pet Care and more. Shop online and over 180 stores across the UK." }
        if nameCare.text == "supra" {
            descrip.text = " on the official Toyota site. Build and price online, or find one at a local dealer and drive one home today."}
        
    }
    
}
