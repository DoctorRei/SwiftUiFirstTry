//
//  YelowView.swift
//  SwiftUiFirstTry
//
//  Created by Акира on 07.10.2023.
//

import SwiftUI

struct YelowView: View {
    
    var alphaComponent: Double
    
    var body: some View {
        Circle()
            .foregroundColor(.yellow)
            .opacity(alphaComponent)
            .frame(width: 150, height: 150)
    }
}

struct YelowView_Previews: PreviewProvider {
    static var previews: some View {
        YelowView(alphaComponent: 1.0)
    }
}
