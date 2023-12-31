//
//  ContentView.swift
//  SwiftUiFirstTry
//
//  Created by Акира on 07.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    
    @State private var redAlpha = 0.3
    @State private var yelowAlpha = 0.3
    @State private var greenAlpha = 0.3
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            RedView(alphaComponent: redAlpha)
                .padding(16)
            
            YelowView(alphaComponent: yelowAlpha)
                .padding(16)
            
            GreenView(alphaComponent: greenAlpha)
                .padding(16)
            
            Spacer()
            
            VStack(alignment: .center) {
                Button {
                    changeColor()
                } label: {
                    Text("Press me")
                }
                .buttonStyle(.bordered)
                .colorMultiply(.indigo)
                .padding(50)
            }
        }
        
        
    }
    
    private func changeColor() {
        switch tapCount {
        case 0:
            tapCount += 1
            redAlpha = 1
            yelowAlpha = 0.3
            greenAlpha = 0.3
            print("red")
        case 1:
            tapCount += 1
            redAlpha = 0.3
            yelowAlpha = 1
            greenAlpha = 0.3
            print("yelow")
        default:
            tapCount = 0
            redAlpha = 0.3
            yelowAlpha = 0.3
            greenAlpha = 1
            print("green")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
