//
//  SurveyData.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 30.07.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import Foundation

struct SurveyData: Decodable {
    let key: String
    let values: [Value]
}

struct Value: Decodable {
    let date: String
    let value: Double?
}
