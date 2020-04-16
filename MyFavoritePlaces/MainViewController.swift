//
//  MainViewController.swift
//  MyFavoritePlaces
//
//  Created by Paul Max on 4/16/20.
//  Copyright © 2020 PaulmaX. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places = Place.getPlace()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.height / 2
        return cell
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
