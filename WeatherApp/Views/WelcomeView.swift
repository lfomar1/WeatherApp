//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Lucas Omar on 2024-01-29.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:LocationManager
    var body: some View {
        VStack {
            VStack (spacing: 20){
                Text("Welcome to the Weather App")
                    .bold()
                    .font(.title)
                Text("Please share your location to get the weather of your area.")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(10)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
