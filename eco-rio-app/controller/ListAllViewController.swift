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
}

class ListAllViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    var placesDAO = InMemoryPlaceDAO(placesList: [])
    var places: [Place] = []

    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.places = placesDAO.getAllPlaces()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let customCell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as! MyCustomCell
        
        let rankFormatted = String(describing: self.places[indexPath.row].meanRank)
        customCell.placeRank?.text = rankFormatted
        
        customCell.placeName?.text = self.places[indexPath.row].name
        
        return customCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
