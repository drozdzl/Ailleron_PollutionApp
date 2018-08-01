//
//  Sensor.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 30.07.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import Foundation

struct Sensor: Decodable {
    let id: Int
    let stationId: Int
    let param: Param
}

struct Param:Decodable {
    let paramName: String
    let paramFormula: String
    let paramCode: String
    let idParam: Int
}
