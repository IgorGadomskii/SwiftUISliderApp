//
//  ColorView.swift
//  SwiftUISliderApp
//
//  Created by Macbook on 04.05.2022.
//

import SwiftUI

struct ColorView: View {
    
    var color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(color)
            .frame(width: 350.0, height: 220.0)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .blue)
    }
}
