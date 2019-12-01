//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Всеволод on 25.11.2019.
//  Copyright © 2019 Vsevolod Khodyrev. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantName = [
        "KFC", "Readers Pub", "Пинта", "McDonalds",
        "Юпитер 5", "Pizza Hut", "DoDo Pizza", "Папа лаваш",]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restaurantName[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantName[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    // MARK: Table View Delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
