//
//  GreenView.swift
//  SwiftUiFirstTry
//
//  Created by Акира on 07.10.2023.
//

import SwiftUI

struct GreenView: View {
    
    var alphaComponent: Double
    
    var body: some View {
        Circle()
            .foregroundColor(.green)
            .opacity(alphaComponent)
            .frame(width: 150, height: 150)
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView(alphaComponent: 1.0)
    }
}
