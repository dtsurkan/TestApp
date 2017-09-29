//
//  WeatherAPI.swift
//  Cities
//
//  Created by Dima Tsurkan on 9/28/17.
//  Copyright © 2017 Dima Tsurkan. All rights reserved.
//

import Foundation
import Moya

enum WeatherService {
    case getWeather(name: String, countryCode: String, apiKey: String)
}

// MARK: - TargetType Protocol Implementation
extension WeatherService: TargetType {
    var base: String { return "http://api.openweathermap.org/data/2.5/" }
    var baseURL: URL { return URL(string: base)! }
    
    var path: String {
        switch self {
        case .getWeather(_):
//            return "weather?q=\(name),\(countryCode)&appid=\(apiKey)"
            return "weather"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getWeather(_):
            return .get
        }
    }
    
    var headers: [String : String]? {
        return [:]
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .getWeather(let name, let countryCode, let apiKey):
            return ["q": "\(name),\(countryCode)", "appid": apiKey]
        }
    }
    
    var parameterEncoding: Moya.ParameterEncoding {
        switch self {
        case .getWeather(_):
            return URLEncoding.queryString
        }
    }
    
    var sampleData: Data {
        switch self {
        case .getWeather(_):
            return Data()
        }
    }
    
    var task: Task {
        switch self {
        case .getWeather(_):
            return .request
        }
    }
}
