//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Lucas Omar on 2024-01-30.
//

import Foundation
import SwiftUI

struct WeatherButtonStyle: View {
    var buttonText: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View{
        Text(buttonText)
           .frame(width: 280, height: 50)
           .background(backgroundColor)
           .foregroundStyle(textColor)
           .font(.system(size: 20, weight: .bold, design: .default))
           .cornerRadius(10)
    }
}
