//
//  JeansTableViewController.swift
//  Project
//
//  Created by MacStudent on 2017-07-04.
//  Copyright © 2017 com.chaitali. All rights reserved.
//
import UIKit
import Foundation

class JeansTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var jeanstableview: UITableView!
    
    
    var data : [Detail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.passwordtxt.delegate = passwordtxt
        self.jeanstableview.delegate = self
        self.jeanstableview.dataSource = self
        
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "JeansTableViewCell", for: indexPath) as? JeansTableViewCell
        
        
        let ProductData = data[indexPath.row]
        
        
        cell?.lblProductName.text = ProductData.productName//formatter.string(from: eventData.eventDate)
        cell?.lblPrice.text = ProductData.productPrice
        cell?.imageJeans?.image = ProductData.productImage
        
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != nil {
            if let productDetailViewController = segue.destination as? DetailViewController
            {
                if let selectedproductcell =  sender as? JeansTableViewCell
                {
                    if let indexpath = jeanstableview.indexPath(for: selectedproductcell)
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
        let productImage1 = UIImage(named: "jeans1")
        let productImage2 = UIImage(named: "jeans2")
        let productImage3 = UIImage(named: "jeans3")
        let productImage4 = UIImage(named: "jeans4")
        
        
        
        let product1 = Detail(productName : "Blue Jeans", productPrice : "$30", productImage : productImage1!, color : "Blue", Supplier : "Megha Production")
        let product2 = Detail(productName : "White Jeans", productPrice : "$40", productImage : productImage2!,color : "White", Supplier : "Maharathi Production")
        let product3 = Detail(productName : "Black Jeans", productPrice : "$90", productImage : productImage3!, color : "Black", Supplier : "Calvin Production" )
        let product4 = Detail(productName : "chex Blue Jeans ", productPrice : "$50", productImage : productImage4!,color : "Blue Chex", Supplier : "Krudhavan Production")
        
        
        data.append(product1)
        data.append(product2)
        data.append(product3)
        data.append(product4)
    }
    
    @IBAction func backtoJeans(unwindSegue: UIStoryboardSegue){
        print(">>>>>>>>>>>>I AM Back")
    }
}


