//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Walker Vonder Haar on 6/24/19.
//  Copyright © 2019 Walker Vonder Haar. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var coordinates: String



    init(name:String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
