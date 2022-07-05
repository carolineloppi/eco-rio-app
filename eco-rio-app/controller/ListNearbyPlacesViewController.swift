//
//  ListNearbyPlacesViewController.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 04/07/22.
//

import UIKit

class ListNearPlacesCell: UITableViewCell{
    
    @IBOutlet weak var visitedImg: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeRank: UILabel!
    @IBOutlet weak var placeImg: UIImageView!
}


class ListNearbyPlacesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    

    var places: [Place] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.places = Session.getPlacesDAO().getAllPlaces()
                
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.places.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

       let nearPlacesCell = tableView.dequeueReusableCell(withIdentifier: "listNearPlacesCell", for: indexPath) as! ListNearPlacesCell

        let rankFormatted = String(describing: self.places[indexPath.row].meanRank)
        
        nearPlacesCell.placeRank?.text = rankFormatted

        nearPlacesCell.placeName?.text = self.places[indexPath.row].name
        print(self.places[indexPath.row].name)


        if(Session.getPlacesDAO().hasVisitedPlace(placeId: self.places[indexPath.row].id)){

            nearPlacesCell.visitedImg?.image = UIImage(named: "visited.png")
        }
        else{
            nearPlacesCell.visitedImg?.image = UIImage(named: "unvisited.png")
        }

        nearPlacesCell.placeImg?.image = UIImage(named: self.places[indexPath.row].photosURL[0]+".png")
       


        return nearPlacesCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600.0;//Choose your custom row height
    }
}
