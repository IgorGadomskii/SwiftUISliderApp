//
//  SliderView.swift
//  SwiftUISliderApp
//
//  Created by Macbook on 04.05.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    @State private var stringValue = "128"
   
    
    var color: Color
    
    var body: some View {
        HStack{
        TextView(stringValue: stringValue)
        Slider(value: $value, in: 0...255, step: 1)
            .accentColor(color)
            .frame(width: 240)
            .onChange(of: value) { newValue in
            stringValue = "\(lround(value))"
        }
        TextFieldView(stringValue: $stringValue, value: $value)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0.0), color: Color.brown)
    }
}


