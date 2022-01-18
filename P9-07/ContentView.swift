//
//  ContentView.swift
//  P9-07
//
//  Created by Vahtee Boo on 18.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 0.0
    
    var body: some View {
        VStack(spacing: 50) {
            Spacer()
            ZStack {
                Circle()
                    .fill(Color(red: 1, green: 0, blue: 0))
                    .frame(width: 250 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red: 0, green: 1, blue: 0))
                    .frame(width: 250 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red: 0, green: 0, blue: 1))
                    .frame(width: 250 * amount)
                    .blendMode(.screen)
            }
            .frame(width: 300, height: 300)
            
            Image("juliette-binoche")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .saturation(amount)
                .blur(radius: (1 - amount) * 7)
            
            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("juliette-binoche").resizable().scaledToFill())
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
