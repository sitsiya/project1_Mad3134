//
//  Border.swift
//  Project
//
//  Created by MacStudent on 2017-07-05.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import Foundation
class Border {
    
    var country : Country
    var countryborder  : [Country]
    
    init(name: String, latitude: Double, longitude: Double)
    {
        self.country = Country(name: name, latitude: latitude, longitude: longitude)
        countryborder  = []
    }
    
    init(country: Country){
        self.country = country
        countryborder  = []
    }
    
    func addBorder(country: Country){
        countryborder.append(country)
    }
    
    func addBorder(name: String, capital: String, latitude: Double, longitude: Double){
        countryborder.append(Country(name: name, latitude: latitude, longitude: longitude))
    }
}
