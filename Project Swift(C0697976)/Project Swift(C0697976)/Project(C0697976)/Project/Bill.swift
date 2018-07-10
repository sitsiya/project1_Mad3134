//
//  Bill.swift
//  Project
//
//  Created by MacStudent on 2017-07-04.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import UIKit
import Foundation
class Bill{
    
    public private(set) var CustomerName: String
    public private(set) var Price: String
    public private(set) var Address: String
    public private(set) var UserName: String
    
    init(CustomerName : String, Price: String, Address: String, UserName: String){
        self.CustomerName = CustomerName
        self.Price = Price
        self.Address = Address
        self.UserName = UserName
    }
    
    func getCustomerName() -> String{
        return CustomerName
        
    }
    func setCustomerName(_ CustomerName : String){
        self.CustomerName = CustomerName
        
    }
    
    func getPrice() -> String{
        return Price
        
    }
    func setPrice(_ Price : String){
        self.Price = Price
        
    }
    
    func getAddress() -> String{
        return Address
        
    }
    func setAddress(_ Address : String){
        self.Address = Address
        
    }
    func getUserName() -> String{
        return UserName
        
    }
    func setUserName(_ UserName : String){
        self.UserName = UserName
        
    }
    
    
}
