//
//  CategoryTableViewController.swift
//  Project
//
//  Created by MacStudent on 2017-07-04.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import UIKit
import Foundation

class CategoryTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var clothtableView: UITableView!
    
    
    var data : [Detail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.passwordtxt.delegate = passwordtxt
        self.clothtableView.delegate = self
        self.clothtableView.dataSource = self
        loadData()
        
 }
    
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTabelViewCell", for: indexPath) as? CategoryTableViewCell
        
        
        let ProductData = data[indexPath.row]
        
        
        cell?.lbltextname.text = ProductData.productName//formatter.string(from: eventData.eventDate)
        cell?.lblprice.text = ProductData.productPrice
        cell?.imgproduct?.image = ProductData.productImage

        
        
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != nil {
            if let productDetailViewController = segue.destination as? DetailViewController
            {
                if let selectedproductcell =  sender as? CategoryTableViewCell
                {
                    if let indexpath = clothtableView.indexPath(for: selectedproductcell)
                    {
                        let selectedproduct = data[indexpath.row]
                        
                        productDetailViewController.detail = selectedproduct
                    }else{
                        fatalError("Error 1")
                    }
                }else{
                    fatalError("Error 2")
                }
            }else{
                fatalError("Error 3")
            }
        }else{
            fatalError("Error 4")
        }
    }
    
    
    
    private func loadData()
    {
        let productImage1 = UIImage(named: "shirt1")
        let productImage2 = UIImage(named: "shirt2")
        let productImage3 = UIImage(named: "shirt3")
        let productImage4 = UIImage(named: "shirt4")

        
        
        let product1 = Detail(productName : "Blue shirt", productPrice : "$25", productImage : productImage1!, color : "Blue", Supplier : "kheshav Production")
        let product2 = Detail(productName : "White shirt", productPrice : "$50", productImage : productImage2!,color : "White", Supplier : "krishna Production")
        let product3 = Detail(productName : "Black shirt", productPrice : "$60", productImage : productImage3!, color : "Black", Supplier : "Radhe Production" )
        let product4 = Detail(productName : "chex Blue shirt ", productPrice : "$40", productImage : productImage4!,color : "Blue Chex", Supplier : "goverdhan Production")

        
        data.append(product1)
        data.append(product2)
        data.append(product3)
        data.append(product4)
    }
    @IBAction func backtoShirt(unwindSegue: UIStoryboardSegue){
        print(">>>>>>>>>>>>I AM Back")
    }
    
}
    

