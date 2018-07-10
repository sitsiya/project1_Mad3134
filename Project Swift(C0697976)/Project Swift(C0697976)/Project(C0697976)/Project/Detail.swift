//
//  Detail.swift
//  Project
//
//  Created by MacStudent on 2017-07-04.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import UIKit
import Foundation
class Detail{
    
    public private(set) var productName: String
    public private(set) var productPrice: String
    public private(set) var productImage: UIImage
    public private(set) var color: String
    public private(set) var Supplier: String
    
    init(productName : String, productPrice: String, productImage: UIImage, color: String, Supplier: String){
    self.productName = productName
     self.productPrice = productPrice
     self.productImage = productImage
     self.color = color
     self.Supplier = Supplier
    }

   func getproductName() -> String{
   return productName

   }
   func setproductName(_ productName : String){
   self.productName = productName

    }
    
    func getproductPrice() -> String{
        return productPrice
        
    }
    func setproductPrice(_ productPrice : String){
        self.productPrice = productPrice
        
    }
    
    func getproductImage() -> UIImage{
        return productImage
        
    }
    func setproductImage(_ productImage : UIImage){
        self.productImage = productImage
        
    }
 
    func getcolor() -> String{
        return color
        
    }
    func setcolor(_ color : String){
        self.color = color
        
    }
    func getSupplier() -> String{
        return Supplier
        
    }
    func setSupplier(_ Supplier : String){
        self.Supplier = Supplier
        
    }
    
    
}
