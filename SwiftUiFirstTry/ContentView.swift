//
//  ContentView.swift
//  SwiftUiFirstTry
//
//  Created by Акира on 07.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    
    @State var redAlpha = 0.3
    @State var yelowAlpha = 0.3
    @State var greenAlpha = 0.3
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            RedView(alphaComponent: redAlpha)
                .padding(16)
            
            YelowView(alphaComponent: yelowAlpha)
                .padding(16)
            
            GreenView(alphaComponent: greenAlpha)
                .padding(16)
            
            Spacer()
            
            VStack {
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
    
    private func changeColorV2() {
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
