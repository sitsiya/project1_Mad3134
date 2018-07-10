//
//  DetailViewController.swift
//  Project
//
//  Created by cc on 7/3/17.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import UIKit
import os.log
import Foundation


class DetailViewController: UIViewController,UITextFieldDelegate{
    
    
    
    @IBOutlet weak var ProductImage: UIImageView!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblprice: UILabel!
    @IBOutlet weak var labelcolor: UILabel!
    @IBOutlet weak var lblsupplier: UILabel!
    
    var detail : Detail?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if detail != nil{
          lblname.text = detail?.productName
            lblprice.text = detail?.productPrice
            labelcolor.text = detail?.color
            lblsupplier.text = detail?.Supplier
            ProductImage.image = detail?.productImage
        }
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            super.prepare(for: segue, sender: sender)
            if segue.identifier != nil {
                if let billViewController = segue.destination as? BillViewController
                {
                    billViewController.bills = detail
                }else{
                    fatalError("Error 3")
                }
            }else{
                fatalError("Error 4")
            }
            
            
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    @IBAction func backtoDetail(unwindSegue: UIStoryboardSegue){
        print(">>>>>>>>>>>>I AM Back")
    }
}
