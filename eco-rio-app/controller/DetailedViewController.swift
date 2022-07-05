//
//  DetailedViewController.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 04/07/22.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var nameOfPlace: UILabel!
    @IBOutlet weak var aboutPlace: UILabel!
    @IBOutlet weak var imageOfPlace: UIImageView!
    
    var places: [Place] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.places = Session.getPlacesDAO().getAllPlaces()
        let other = self.places[1] as! OtherAttraction
        
        self.aboutPlace.contentMode = .scaleToFill
        self.aboutPlace.numberOfLines = 5
        
        self.nameOfPlace.text =  other.name
        self.aboutPlace.text =  other.history
        self.imageOfPlace.image = UIImage(named: "aterro-fla.jpg")
    }
    
    func evaluatePlace(){
        //create evaluate object
        //atttach it to currentActiveUser
    }
    
    
}
