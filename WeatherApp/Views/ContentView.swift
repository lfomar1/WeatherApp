//
//  ContentView.swift
//  WeatherApp
//
//  Created by Lucas Omar on 2024-01-29.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,Color(.lightBlue)],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                
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
                    print("Hello World")
                } label: {
                     Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
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
