//
//  DetailedViewController.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 04/07/22.
//

import UIKit

class NearbyPlacesCell: UITableViewCell{
    
    @IBOutlet weak var hasVisited: UIImageView!
    
    @IBOutlet weak var placeName: UILabel!
    
    @IBOutlet weak var placeRank: UILabel!
}

class DetailedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var nameOfPlace: UILabel!
    @IBOutlet weak var aboutPlace: UILabel!
    @IBOutlet weak var imageOfPlace: UIImageView!
    @IBOutlet weak var titleOfSection: UILabel!
    
    @IBOutlet weak var visitorsCount: UILabel!
    
    @IBOutlet weak var nearbyPlacesTableView: UITableView!
        
    var places: [Place] = []
    var id = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //essa propriedade deveria ser selectedPlaces e pertencer a classe de rankeamento do padrao strategy.
        self.places = Session.getPlacesDAO().getAllPlaces()
        
        nearbyPlacesTableView.delegate = self
        nearbyPlacesTableView.dataSource = self
        
        
    
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let nearbyPlacesCell = nearbyPlacesTableView.dequeueReusableCell(withIdentifier: "nearPlacesCell2", for: indexPath) as! NearbyPlacesCell
        
        let rankFormatted = String(describing: self.places[indexPath.row].getMeanRank())
        nearbyPlacesCell.placeRank?.text = rankFormatted
        
        nearbyPlacesCell.placeName?.text = self.places[indexPath.row].name
        
        
        if(Session.getPlacesDAO().hasVisitedPlace(placeId: self.places[indexPath.row].id)){
                                    
            nearbyPlacesCell.hasVisited?.image = UIImage(named: "visited.png")
        }
        else{
            nearbyPlacesCell.hasVisited?.image = UIImage(named: "unvisited.png")
        }

        
        
        return nearbyPlacesCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    func evaluatePlace(){
        //create evaluate object
        //atttach it to currentActiveUser
    }
    
    
}
