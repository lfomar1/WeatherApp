//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Lucas Omar on 2024-01-30.
//

import Foundation
import CoreLocation

class WeatherManager {
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat={\(latitude)}&lon={\(longitude)}&appid=935b63d9a065a44f99c634106e0cf5ca&units=metric") else {
            fatalError("Missing URL")
        }
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for:urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            fatalError("Error fetching data")
        }
    }
}
