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
    @IBOutlet weak var titleOfSection: UILabel!
    
    @IBOutlet weak var visitorsCount: UILabel!
    var places: [Place] = []
    var id = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.places = Session.getPlacesDAO().getAllPlaces()
        print("ÏDDDD",id)
        print(self.places.filter({$0.id==self.id})[0])
        
        
    
        if (self.places.filter({$0.id==self.id})[0] is OtherAttraction) {
            var attraction: OtherAttraction
            attraction = self.places.filter({$0.id==self.id})[0] as! OtherAttraction
            
            self.aboutPlace.text =  attraction.history
            self.nameOfPlace.text =  attraction.name
            self.visitorsCount.text = String(attraction.visitCount)
            
            self.titleOfSection.text = "Sobre"
            self.imageOfPlace.image = UIImage(named: attraction.photosURL[0] + ".jpg")
        }
        else {
            var trail: Trail
            trail = self.places.filter({$0.id==self.id})[0] as! Trail
            
            //TODO: fix me to append all endemic species
            self.aboutPlace.text =  trail.endemicSpecies[0]
            self.nameOfPlace.text =  trail.name
            self.visitorsCount.text = String(trail.visitCount)

            
            self.titleOfSection.text = "Espécies Endêmicas"
            self.imageOfPlace.image = UIImage(named: trail.photosURL[0] + ".jpg")

        }
            //add specs. and images.
    

    
        //todo atualizar para pegar pelo id. usar o filter.
        
        self.aboutPlace.contentMode = .scaleToFill
        self.aboutPlace.numberOfLines = 5
        
   
    }
    
    
    func evaluatePlace(){
        //create evaluate object
        //atttach it to currentActiveUser
    }
    
    
}
