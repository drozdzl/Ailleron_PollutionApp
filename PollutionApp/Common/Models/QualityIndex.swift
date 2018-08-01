//
//  QualityIndex.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 30.07.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import Foundation

struct QualityIndex: Decodable {
    let id: Int
    let stCalcDate: String
    let stIndexLevel: IndexLevel
}

struct IndexLevel: Decodable {
    let id: Int
    let indexLevelName: String
}
