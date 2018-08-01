//
//  City.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 30.07.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import Foundation

struct City: Decodable, Hashable {
    let name: String
    let id: Int
}
