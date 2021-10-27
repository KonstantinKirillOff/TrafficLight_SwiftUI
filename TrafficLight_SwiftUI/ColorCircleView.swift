//
//  ColorCircleView.swift
//  TrafficLight_SwiftUI
//
//  Created by Константин Кириллов on 27.10.2021.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    var opacityValue = 0.3
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(opacityValue))
            .frame(width: 130, height: 130)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 5)
            .padding(.top, 10.0)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacityValue: 0.3)
    }
}
