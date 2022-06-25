//
//  Model.swift
//  ParsingJsonByWeather
//
//  Created by Алексей Гуляев on 25.06.2022.
//

import Foundation

//Make the Struct

// MARK: - Weather
struct Weather: Codable {
    let temperature, wind, weatherDescription: String?
    let forecast: [Forecast]?

    enum CodingKeys: String, CodingKey {
        case temperature, wind
        case weatherDescription = "description"
        case forecast
    }
}

// MARK: - Forecast
struct Forecast: Codable {
    let day, temperature, wind: String?
}
