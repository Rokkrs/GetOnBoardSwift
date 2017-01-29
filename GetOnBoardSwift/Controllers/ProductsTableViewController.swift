//
//  ProductsTableViewController.swift
//  GetOnBoardSwift
//
//  Created by Oscar on 1/5/17.
//  Copyright © 2017 RokkrsStore. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    var productNames : [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "984 Motorola Portable"]
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let pNames = productNames {
            return pNames.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        let productName = productNames?[indexPath.row]
        
        if let pName = productName {
            cell.textLabel?.text = pName
            cell.imageView?.image = UIImage(named: "image-cell1")
        }
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct"{
            let productVC = segue.destination as? InitViewController
            
            let cell = sender as? UITableViewCell
            if let c = cell {
                let indexPath = tableView.indexPath(for: c)
                if let ip = indexPath{
                    let productName = productNames?[ip.row]
                    productVC?.productName = productName
                }
            }
            //productVC?.productName = "Really old phone"
        }
        
    }

}
