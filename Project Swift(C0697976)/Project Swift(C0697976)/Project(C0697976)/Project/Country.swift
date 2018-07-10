//
//  Country.swift
//  Project
//
//  Created by MacStudent on 2017-07-05.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import Foundation
class Country {
    public private(set) var countryName    : String
    public private(set) var latitude       : Double
    public private(set) var longitude      : Double
    
    init(name: String, latitude: Double, longitude: Double){
        self.countryName = name
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
}
