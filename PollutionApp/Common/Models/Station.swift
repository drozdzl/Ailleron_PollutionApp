//
//  Station.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 30.07.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import Foundation

struct Station: Decodable {
    let stationName: String
    let id: Int
    let gegrLat: String
    let gegrLon: String
    let city: City
}
