//
//  TableViewController.swift
//  assessment
//
//  Created by Thinley Dorjee on 10/5/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var crayons = [Crayon]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
       
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return crayons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let crayon = crayons[indexPath.row]
        cell.setData(crayon: crayon)
        
        // Configure the cell...

        return cell
    }
  
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }



}