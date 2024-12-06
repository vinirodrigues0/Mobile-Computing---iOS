//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Vinicius Rodrigues on 11/12/24.
//

import UIKit

class Product {
    var productName: String?
    var productCategory: String?
    
    init(productName: String, productCategory: String) {
        self.productName = productName
        self.productCategory = productCategory
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count  // return the number of products
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a cell
        var cell = tableViewOL.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        
        // populate the cell
        cell.textLabel?.text = products[indexPath.row].productName
        
        // return the cell
        return cell
    }
    
    
    // Creating product array
    var products = [Product]()
    
    @IBOutlet weak var tableViewOL: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
        
        let p1 = Product(productName: "Macbook", productCategory: "Electronics")
        products.append(p1)
        
        let p2 = Product(productName: "Iphone", productCategory: "SmartPhone")
        products.append(p2)
        
        let p3 = Product(productName: "Instant Pot", productCategory: "Home Appliances")
        products.append(p3)
        
        let p4 = Product(productName: "Samsung Galaxy", productCategory: "SmartPhone")
        products.append(p4)
        
        let p5 = Product(productName: "Sony Speakers", productCategory: "Electronics")
        products.append(p5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "resultSegue" {
            let destination = segue.destination as! ResultViewController
            
            destination.product = products[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }

    

}

