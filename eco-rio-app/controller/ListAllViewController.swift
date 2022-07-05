//
//  ListAllViewController.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 27/06/22.
//

import UIKit

class MyCustomCell: UITableViewCell{
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeRank: UILabel!
    
    @IBOutlet weak var visitedImg: UIImageView!
}

class ListAllViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    var places: [Place] = []
    var selectedPlaceId = 2;
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        
        tableView.delegate = self

        super.viewDidLoad()
        tableView.dataSource = self
        tableView.allowsSelection = true
        
        self.places = Session.getPlacesDAO().getAllPlaces()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let customCell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as! MyCustomCell
        
        let rankFormatted = String(describing: self.places[indexPath.row].meanRank)
        customCell.placeRank?.text = rankFormatted
        
        customCell.placeName?.text = self.places[indexPath.row].name
        
        
        if(Session.getPlacesDAO().hasVisitedPlace(placeId: self.places[indexPath.row].id)){
                                    
            customCell.visitedImg?.image = UIImage(named: "visited.png")
        }
        else{
            customCell.visitedImg?.image = UIImage(named: "unvisited.png")
        }

        
        
        return customCell
    }
    
    //TODO: entender porque o didSelectRowAt não esta sendo chamado.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        self.selectedPlaceId = self.places[indexPath.row].id
        print("Selected Place ID Line", self.selectedPlaceId)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("AQIIII")
        if segue.destination is DetailedViewController{
            let viewController = segue.destination as? DetailedViewController
            viewController?.id = self.selectedPlaceId
        }
    }
    
}
