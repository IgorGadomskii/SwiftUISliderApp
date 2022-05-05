//
//  TextView.swift
//  SwiftUISliderApp
//
//  Created by Macbook on 04.05.2022.
//

import SwiftUI

struct TextView: View {
    var stringValue: String
    
    var body: some View {
        Text(stringValue)
            .frame(width: 45)
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(stringValue: "")
    }
}
