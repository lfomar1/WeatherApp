//
//  ContentView.swift
//  WeatherApp
//
//  Created by Lucas Omar on 2024-01-29.
//

import SwiftUI


struct ContentView: View {
    @State private var isNightMode = false
    var body: some View {
        ZStack {
            BackgroundView(isNightMode: isNightMode)
            
            VStack{
               
                CityName(cityName: "Cupertino, CA")
                
                CurrentCityWeather(imageString: isNightMode ? "moon.stars.fill" : "cloud.sun.fill",
                                   temp: "76°")
                
                HStack(spacing: 20){
                WeatherDayView( dayOfWeek: "TUE",
                                imageName: "cloud.sun.fill",
                                temp: "76°")
                WeatherDayView( dayOfWeek: "WED",
                                imageName: "cloud.rain.fill",
                                temp: "55°")
                WeatherDayView( dayOfWeek: "THU",
                                imageName: "cloud.bolt.rain.fill",
                                temp: "65°")
                WeatherDayView( dayOfWeek: "FRI",
                                imageName: "cloud.sun.rain.fill",
                                temp: "74°")
                WeatherDayView( dayOfWeek: "SAT",
                                imageName: "cloud.sun.bolt.fill",
                                temp: "70°")
                    
                        
                    }
                
                Spacer()
                
                Button {
                    isNightMode.toggle()
                } label: {
                    WeatherButtonStyle(buttonText: isNightMode ? "Change Day Time" : "Change Night Time",                                             backgroundColor: isNightMode ? .black : .white,
                                       textColor: isNightMode ? .white : .blue)
                }
                Spacer()
            }
        }
    }
}


#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temp: String
    var body: some View {
        VStack (spacing: 10){
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(temp)
                .font(.system(size: 28, weight: .medium))
        }
        .foregroundStyle(.white)
    }
}

struct BackgroundView: View {
    var isNightMode: Bool
    var body: some View {
        LinearGradient(colors: [isNightMode ? .black : .blue, isNightMode ? .white : Color("lightBlue") ], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct CityName: View {
    var cityName: String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct CurrentCityWeather: View {
    var imageString: String
    var temp: String
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageString)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text(temp)
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

