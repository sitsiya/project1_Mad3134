//
//  Login.swift
//  Project
//
//  Created by MacStudent on 2017-07-04.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import Foundation
class Login{
    
    public private(set) var UserName: String
    public private(set) var Password: Int
    
    
    
    
    init(UserName: String, Password: Int){
       
        self.UserName = UserName
        self.Password = Password
        
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
