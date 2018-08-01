//
//  PollutionService.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 30.07.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import Foundation
import Moya

enum PollutionSevice {
    case findAllStations
    case sensors(stationId: Int)
    case surveyData(sensorId: Int)
    case airQualityIndex(stationId: Int)
}

extension PollutionSevice: TargetType {
    var baseURL: URL {
        return URL(string: "http://api.gios.gov.pl/pjp-api/rest")!
    }
    
    var path: String {
        switch self {
        case .airQualityIndex(stationId: let index):
            return "/aqindex/getIndex/\(index)"
        case .findAllStations:
            return "/station/findAll"
        case .sensors(let stationId):
            return "station/sensors/\(stationId)"
        case .surveyData(let sensorId):
            return "/data/getData/\(sensorId)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .airQualityIndex(_), .findAllStations, .sensors(_), .surveyData(_):
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .findAllStations:
            return .requestPlain
        case .sensors(let stationId):
            return .requestParameters(parameters: ["stationId": stationId], encoding: JSONEncoding.default)
        case .surveyData(let sensorId):
            return .requestParameters(parameters: ["sensorId": sensorId], encoding: JSONEncoding.default)
        case .airQualityIndex(let stationId):
            return .requestParameters(parameters: ["stationId": stationId], encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
    
    
}
