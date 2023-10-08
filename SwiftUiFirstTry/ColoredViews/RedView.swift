//
//  RedView.swift
//  SwiftUiFirstTry
//
//  Created by Акира on 07.10.2023.
//

import SwiftUI

struct RedView: View {
    
    var alphaComponent: Double
    
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .opacity(alphaComponent)
            .frame(width: 150, height: 150)
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView(alphaComponent: 1)
    }
}
