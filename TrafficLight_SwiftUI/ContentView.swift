//
//  ContentView.swift
//  TrafficLight_SwiftUI
//
//  Created by Константин Кириллов on 27.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonName = "START"
    @State private var currentLightIndex = 0
    
    @State private var redLightView = ColorCircleView(color: .red)
    @State private var yelloyLightView = ColorCircleView(color: .yellow)
    @State private var greenLightView = ColorCircleView(color: .green)
    
    private let lightIsOn: Double = 1
    private let lightIsOff: Double = 0.3
   
    var body: some View {
        ZStack {
          Color(.black)
               .ignoresSafeArea()
            VStack {
                redLightView
                yelloyLightView
                greenLightView
                Spacer()
                Button {
                    
                    if buttonName == "START" {
                        buttonName = "NEXT"
                    }
                    
                    switch currentLightIndex {
                    case 0:
                        redLightView.opacityValue = lightIsOn
                        greenLightView.opacityValue = lightIsOff
                    case 1:
                        redLightView.opacityValue = lightIsOff
                        yelloyLightView.opacityValue = lightIsOn
                    default:
                        yelloyLightView.opacityValue = lightIsOff
                        greenLightView.opacityValue = lightIsOn
                    }
                    
                    if currentLightIndex == 2 {
                        currentLightIndex = 0
                    } else {
                        currentLightIndex += 1
                    }
                } label: {
                    Text(buttonName)
                        .frame(width: 170, height: 30)
                        .font(.title)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 20))
                .controlSize(.large)
                
            }
            .padding(.bottom, 25)
       }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
