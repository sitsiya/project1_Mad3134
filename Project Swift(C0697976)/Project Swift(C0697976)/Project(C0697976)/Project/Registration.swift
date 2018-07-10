//
//  Registration.swift
//  Project
//
//  Created by MacStudent on 2017-07-04.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import UIKit
import Foundation
class Registration{
    
public private(set) var Name: String
public private(set) var MobileNo: Int
public private(set) var Gender: String
public private(set) var Address: String
public private(set) var City: String
public private(set) var State: String
public private(set) var Zip: String
public private(set) var UserName: String
public private(set) var Password: Int
    
    
    

    init(Name: String, MobileNo: Int, Gender: String, Address: String, City: String, State: String, Zip: String, UserName: String, Password: Int){
    self.Name = Name
    self.MobileNo = MobileNo
    self.Gender = Gender
    self.Address = Address
    self.City = City
    self.State = State
    self.Zip = Zip
    self.UserName = UserName
    self.Password = Password
    
}

func getName() -> String{
    return Name
    
}
func setName(_ Name : String){
    self.Name = Name
    
}

    func getMobileNo() -> Int{
        return MobileNo
        
    }
    func setMobileNo(_ MobileNo : Int){
        self.MobileNo = MobileNo
        
    }
    func getGender() -> String{
        return Gender
        
    }
    func setGender(_ Gender : String){
        self.Gender = Gender
        
    }

    func getAddress() -> String{
        return Address
        
    }
    func setAddress(_ Address : String){
        self.Address = Address
        
    }
    func getCity() -> String{
        return City
        
    }
    func setCity(_ City : String){
        self.City = City
        
    }
    func getState() -> String{
        return State
        
    }
    func setState(_ State : String){
        self.State = State
        
    }
    
    func getZip() -> String{
        return Zip
        
    }
    func setZip(_ Zip : String){
        self.Zip = Zip
        
    }

    func getUserName() -> String{
        return UserName
        
    }
    func setUserName(_ UserName : String){
        self.UserName = UserName
        
    }
    
    func getPassword() -> Int{
        return Password
        
    }
    func setPassword(_ Password : Int){
        self.Password = Password
        
    }

}
